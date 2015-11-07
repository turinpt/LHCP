-- Leeroy Hill Cats Power Extended
-- Written by Barogio of Thunderhorn with help from Moomin!
-- Based on Benny Hill mod by Catalyst + Springbeart of Thunderhorn
-- Extended and Optimized by Ruuro and Basic of Kil'Jaeden

local _G = getfenv(0);

LHCP_timeTilNext = 0;		-- throttle sound spamming
LHCP_emoteTime = 0;		-- throttle emote spamming
LHCP_globalIgnoreMode = false;  -- make prefs global
LHCP_ignoreMode = 0;		-- ignore mode
LHCP_factionText = nil;		-- player's faction name
LHCP_isEnabled = false;		-- disable parsing when not in world
LHCP_debug = false;		-- print debug statements

LHCP_IGNORE_SPAM = 2^0;		-- ignore repeated emotes
LHCP_IGNORE_ENEMY = 2^1;	-- ignore opposing faction LHCP
LHCP_IGNORE_SOUNDS = 2^2;	-- don't play sounds
LHCP_IGNORE_EMOTES = 2^3;	-- don't fire emotes
LHCP_PLAY_NSFW = 2^4;		-- ignore NSFW LHCP
LHCP_IGNORE_RAID = 2^5;		-- ignore LHCP when in raid

LHCP_events = {			-- LHCP event function hooks
}

LHCP_eggs = {			-- LHCP easter egg hooks
}

LHCP_phrases = nil;		-- LHCP phrase index


LHCP_skipEvent = nil;		-- event name to skip
LHCP_lastEmote = nil;		-- last emote, for emote antispam
LHCP_skipText = nil;		-- event text to skip

LHCP_actionList = nil;		-- list of LHCP actions for /lhcp list

LHCP_Orig_ChatFrame_OnEvent = nil;


---
--- Init
---

function LHCP_MakeSlashCmd(name,cmd,i,slashList)
	cmd = "/"..cmd;
	
	if slashList and slashList[cmd] then
		return false;
	end
	
	_G["SLASH_"..name..i] = cmd;
	
	return true;
end

function LHCP_GetSlashList()
	local timeout = time() + 10;
	local slashList = {};
	for key,_ in pairs(_G.SlashCmdList) do
		local i = 1;
		local name = "SLASH_"..key..i;
		while _G[name] do
			slashList[_G[name]] = key;
			i = i+1;
			name = "SLASH_"..key..i;
		end
	end

	return slashList;
end

function LHCP_Init()
	-- need to register chat events here - because they are fired
	-- in the order they were registered
	
	-- register additional events
	LHCP_events["CHAT_MSG_SAY"] = LHCP_PlayIncomingText;
	LHCP_events["CHAT_MSG_TEXT_EMOTE"] = LHCP_HandleTextEmote;
	LHCP_events["PLAYER_LEAVING_WORLD"] = LHCP_Disable;
	LHCP_events["PLAYER_ENTERING_WORLD"] = LHCP_Enable;

	-- actually hook up all events
	LHCP_HookEvents();

	-- filter the chat frame
	LHCP_HookAllChatFrames();

end

function LHCP_Enable()
	LHCP_isEnabled = true;
end

function LHCP_Disable()
	LHCP_isEnabled = false;
end

function LHCP_LoadEEgg(key,value,abortTime)
	if time() > abortTime then error("LHCP load stalled on "..key); end
	
	if value["event"] ~= nil
	  and value["text"] ~= nil
	  and value["file"] ~= nil then
	  	
	  	local ev = value["event"];
		
	  	if LHCP_eggs[ev] == nil then
			LHCP_events[ev] = LHCP_DoEgg;
			LHCP_eggs[ev] = {};
		end
	  	
		table.insert(LHCP_eggs[ev],key);
	end
end

function LHCP_LoadDataText(key,value,abortTime)
	if time() > abortTime then error("LHCP load stalled on "..key); end
	
	if value["text"] ~= nil and value["file"] ~= nil then
		local txts = {
			value["text"],
			value[LHCP_factionText],
			value["alttext"]
		};
		
		for i,t in ipairs(txts) do
			if t ~= nil and string.len(t) > 0 then
				LHCP_phrases[t] = key;
			end
		end
	end
end

function LHCP_LoadDataCmd(key,value,abortTime)
	if time() > abortTime then error("LHCP load stalled on cmd "..key); end
	
	local name = "LHCP"..key;
	-- need to use a dynamic script here to avoid variable scoping
	-- how do you pre-evaluate "key" ???
	_G.SlashCmdList[name] = loadstring("LHCP_SayOutgoingEmote(\""..key.."\");");
	
	local i = 1;
	_= LHCP_MakeSlashCmd(name,key,i,slashList)
	  or LHCP_Print("LHCP register /"..key.." failed",1,.3,.3);
	
	i = i+1;
	
	-- add slash aliases
	local j = 1;
	local cmd = value["cmd"..j];
	while cmd ~= nil do
		_= LHCP_MakeSlashCmd(name,cmd,i)
		  or LHCP_Print("LHCP register /"..cmd.." failed",1,.3,.3);
		
		i = i+1;
		j = j+1;
		cmd = value["cmd"..j];
	end
end

function LHCP_Load()
	local t0 = time();
	local abortTime = t0 + 10;
	
	local slashList = LHCP_GetSlashList();

	LHCP_phrases = {};
	
	-- generate all the slash commands!
	if LeeroyHillCatsPower_data then
		for key,value in pairs(LeeroyHillCatsPower_data) do
			LHCP_LoadDataCmd(key,value,abortTime);
		end
	end
	
	-- index the easter eggs
	if LeeroyHillCatsPower_eastereggs then
		for key,value in pairs(LeeroyHillCatsPower_eastereggs) do
			LHCP_LoadEEgg(key,value,abortTime);
		end
	end
	
	-- TODO get player faction
	LHCP_factionText = UnitFactionGroup("player").."EnemyText";
	
	-- index the phrases
	if LeeroyHillCatsPower_data then
		for key,value in pairs(LeeroyHillCatsPower_data) do
			LHCP_LoadDataText(key,value,abortTime);
		end
	end
	
	local dt = time() - t0;
	
	LHCP_Print("LeeroyHillCatsPower loaded. "
	  .."Type /lhcp for more info.",0,1,0);
	LHCP_Debug("LHCP load took ",t0," seconds.");
	
	LHCP_ShowStatus();
end

function LHCP_HookAllChatFrames()
	if Sea then
		LHCP_Debug("Using Sea library to hook ",
		  NUM_CHAT_WINDOWS," chat windows");
		
		for i=1,NUM_CHAT_WINDOWS do
			Sea.util.hook("ChatFrame"..i,"LHCP_ChatFrame_OnEvent","hide","OnEvent");
		end
	else
		local ChatFrame_Orig_OnEvent = ChatFrame_OnEvent;
		ChatFrame_OnEvent = function(event)
			if LHCP_ChatFrame_OnEvent(event) then
				return ChatFrame_Orig_OnEvent(event);
			else
				return;
			end
		end
	end
end

function LHCP_HookEvents()
	for key,value in pairs(LHCP_events) do
		this:RegisterEvent(key);
	end
end

function LHCP_UnhookEvents()
	for key,value in pairs(LHCP_events) do
		this:UnregisterEvent(key);
	end
end

---
--- Intercept says
---


function LHCP_HandleTextEmote()
	if not LHCP_isEnabled then
		return nil;
	end
	
	if not LHCP_IgnoreSpam() then
		return;
	end
	
	LHCP_Debug("HandleTextEmote ",event," ",arg1);
	
	
	local now = time();
	if LHCP_lastEmote and now >= LHCP_emoteTime then
		LHCP_lastEmote = nil;
	end
	
	LHCP_emoteTime = now + 5;
	
	if LHCP_lastEmote and string.find(arg1,LHCP_lastEmote) then

		LHCP_skipEvent = event;
		-- filter this text from the screen
		LHCP_skipText = arg1;
		LHCP_Debug("Skip ",event," ",arg1);
	else
		for _,emote in ipairs(LeeroyHillCatsPower_emotes) do
			if string.find(arg1,emote) then
				LHCP_lastEmote = emote;
				LHCP_Debug("Last emote ",emote);
				return;
			end
		end
	end
end

-- returns new file location if it has been better established
function LHCP_PlaySoundFile(file)
	if not LHCP_isEnabled then
		return nil;
	end
	
	if not file then
		return nil;
	end

	LHCP_Debug("Playing ",file);
	if PlaySoundFile(file) == 1 then
		return file;
	end
	
	local newfile;
	for i,ext in ipairs(LeeroyHillCatsPower_extensions) do
		newfile = file..ext;
		LHCP_Debug("Playing ",newfile);
		if PlaySoundFile(newfile) == 1 then
			return newfile;
		end
	end
	
	LHCP_Debug("Error playing ",file);
	return file;
end

function LHCP_SayOutgoingEmote(key)
	local emote = LeeroyHillCatsPower_data[key];

	if emote == nil then return; end
	
	SendChatMessage(emote["text"], "SAY");
end

function LHCP_PlayIncomingText()
	if not LHCP_isEnabled then
		return nil;
	end
	
	LHCP_Debug("PlayIncomingText ",event," ",arg1);
	
	local key = LHCP_phrases[arg1];
	
	LHCP_PlayIncomingEmote(key,event,arg1,arg2);
end

function LHCP_PlayIncomingEmote(key,event,arg1,arg2)
	local emote = LeeroyHillCatsPower_data[key];
	local selfplay = arg1 == nil; -- indicates self-play
	
	if emote == nil then return; end
	
	local emoteinfo = ChatTypeInfo["EMOTE"];

	if not selfplay then
		LHCP_skipEvent = event; -- skip the "say"
		LHCP_skipText = arg1;

		LHCP_Debug("Skipping ",event," ",arg1);
	end
	
	if LHCP_RaidIgnore() and LHCP_PlayerIsInRaidInstance() then
		LHCP_Debug("Raid ignoring ",key);
		return;
	end
	
	if emote["msg"] then
		if selfplay or LHCP_PlayEmotes() then
			LHCP_Print(arg2..emote["msg"],
			  emoteinfo.r, emoteinfo.g, emoteinfo.b);
		end
	end
	
	if emote["emote"] then
		if selfplay or LHCP_PlayEmotes() then
			DoEmote(emote["emote"]);
		end
	end
	
	if emote["file"] then
		if time() >= LHCP_timeTilNext and LHCP_PlaySounds() then
			if emote["nsfw"] and not LHCP_PlayNsfw() then
				-- not playing NSFW
				return;
			end
			
			-- compare text to the opposing faction text
			-- if match, then this emote came from an enemy
			if (not LHCP_PlayEnemy())
			  and emote[LHCP_factionText] == arg1 then
				-- ignoring enemy emotes
				return;
			end
			
		  	emote["file"] = LHCP_PlaySoundFile(emote["file"]);
			LHCP_timeTilNext = time() + 2;
			-- minimum 2 seconds between all emotes
		end
	end
end

function LHCP_PlayerIsInRaidInstance()
	local zone = GetRealZoneText();

	return LeeroyHillCatsPower_ignoreZones[zone];
end

function LHCP_DoEgg()
	LHCP_Debug("Egg ",event," ",arg1);
	
	local egg = LHCP_eggs[event];
	
	if not egg or not arg1 then return; end
	
	for i,sound in ipairs(egg) do
		if egg["text"] and string.find( arg1, egg["text"]) then
			egg["file"] = LHCP_PlaySoundFile(egg["file"]);
		end
	end
end

function LHCP_OnEvent()
	if not LHCP_phrases then
		LHCP_Load();
	end
	
	LHCP_HandleEvent();
end

function LHCP_HandleEvent()
	if LHCP_events then
		local func = LHCP_events[event];
		if func ~= nil then
			func();
		end
	end
end

---
--- Replace chat frame check to remove says
---

function LHCP_ChatFrame_OnEvent()
	if LHCP_skipEvent and LHCP_skipEvent == event
		and LHCP_skipText == arg1 then
		-- we got the event we want to skip
		LHCP_Debug("Skipped ",arg1);
		return false;
	else
		return true;
	end
end

---
--- Slash Commands
---

function LHCP_Debug(...)
	LHCP_Print(arg,nil,nil,nil,true,true);
end

function LHCP_Print(text,r,g,b,oneline,dodebug)
	if dodebug and not LHCP_debug then
		return;
	end
	
	local out = "";
	if type(text) == "table" then
		for _,msg in ipairs(text) do
			if oneline then
				out = out..msg;
			else
				DEFAULT_CHAT_FRAME:AddMessage(msg,r,g,b);
			end
		end
		
		if oneline then
			DEFAULT_CHAT_FRAME:AddMessage(out,r,g,b);
		end
	else
		DEFAULT_CHAT_FRAME:AddMessage(text,r,g,b);
	end
end

function LHCP_List()
	-- list all events
	if not LHCP_actionList then
		LHCP_actionList = {};
		
		local allCmds = {};
		for key,value in pairs(LeeroyHillCatsPower_data) do
			
			table.insert(allCmds,key);
			
			local i = 1;
			local cmd = "cmd"..i;
			while value[cmd] do
				table.insert(allCmds,value[cmd]);
				i = i+1;
				cmd = "cmd"..i;
			end
		end
		
		table.sort(allCmds);
		
		LHCP_actionList = {};
		local str = "";
		for i,value in ipairs(allCmds) do
			if string.len(str) + string.len(value) > 50 then
				table.insert(LHCP_actionList,str);
				str = "";
			end

			str = str .." ".. value;
		end
		table.insert(LHCP_actionList,str);
	end
	
	LHCP_Print("LeeroyHillCatsPower!");
	LHCP_Print(LHCP_actionList);
	LHCP_Print(LeeroyHillCatsPower_new);
end


function LHCP_main()
	LHCP_Print(LeeroyHillCatsPower_credits);
	LHCP_Print(LeeroyHillCatsPower_about);
	LHCP_Print(LeeroyHillCatsPower_new);
end

function LHCP_help(msg)
	LHCP_Print(LeeroyHillCatsPower_about);
	LHCP_Print(LeeroyHillCatsPower_help);
	LHCP_Print(LeeroyHillCatsPower_new);
end

-- ignore emotes, but participate
function LHCP_quiet()
	LHCP_ignoreMode = bit.bor(LHCP_IGNORE_SPAM,LHCP_IGNORE_SOUNDS);
	LHCP_Print("LHCP ignoring sounds");
end

-- ignore all emote requests
function LHCP_ignore()
	LHCP_ignoreMode = bit.bor(LHCP_ignoreMode,
	  LHCP_IGNORE_SPAM,LHCP_IGNORE_SOUNDS,LHCP_IGNORE_EMOTES);
	
	LHCP_Print("LHCP ignoring all events");
end

function LHCP_PlaySounds()
	return bit.band(LHCP_ignoreMode,LHCP_IGNORE_SOUNDS) == 0;
end

function LHCP_PlayEmotes()
	return bit.band(LHCP_ignoreMode,LHCP_IGNORE_EMOTES) == 0;
end

function LHCP_PlayEnemy()
	return bit.band(LHCP_ignoreMode,LHCP_IGNORE_ENEMY) == 0;
end

-- unignore all
function LHCP_unignore()
	-- preserve all other bits
	LHCP_ignoreMode = bit.band(LHCP_ignoreMode,
	  bit.bnot(bit.bor(LHCP_IGNORE_SPAM,LHCP_IGNORE_SOUNDS,LHCP_IGNORE_EMOTES)));
	
	LHCP_Print("LHCP not ignoring anything");
end

-- ignore pvp emotes
function LHCP_pvp()
	LHCP_ignoreMode = bit.bor(LHCP_ignoreMode,LHCP_IGNORE_ENEMY);
	LHCP_Print("LHCP ignoring cross-faction events");
end

function LHCP_nospam()
	LHCP_ignoreMode = bit.bor(LHCP_ignoreMode,LHCP_IGNORE_SPAM);
	LHCP_Print("LHCP ignoring spammed emotes");
end

function LHCP_IgnoreSpam()
	return bit.band(LHCP_ignoreMode,LHCP_IGNORE_SPAM) ~= 0;
end

function LHCP_Nsfw()
	LHCP_ignoreMode = bit.bor(LHCP_ignoreMode,LHCP_PLAY_NSFW);
	LHCP_Print("LHCP playing NSFW emotes");
end

function LHCP_Sfw()
	LHCP_ignoreMode = bit.band(LHCP_ignoreMode,bit.bnot(LHCP_PLAY_NSFW));
	LHCP_Print("LHCP not playing NSFW emotes");
end

function LHCP_PlayNsfw()
	return bit.band(LHCP_ignoreMode,LHCP_PLAY_NSFW) ~= 0;
end

-- privately play it
function LHCP_PrivatePlay(msg)
	LHCP_Debug("Private playing ",msg);
	LHCP_PlayIncomingEmote(msg,"CHAT_MSG_SAY",nil,UnitName("player"));
end

function LHCP_ToggleIgnore()
	if LHCP_lastToggle then
		for i,v in ipairs(LHCP_toggle) do
			if v == LHCP_lastToggle then
				LHCP_lastToggle = LHCP_toggle[i+1];
				break;
			end
		end
	end

	if not LHCP_lastToggle then
		LHCP_lastToggle = LHCP_toggle[1];
	end

	LHCP_lastToggle();
end

function LHCP_ShowStatus()
	if not LHCP_PlayEmotes() then
		LHCP_Print("LHCP is ignored",0,1,0);
	elseif not LHCP_PlaySounds() then
		LHCP_Print("LHCP is in quiet mode",0,1,0);
	end

	if not LHCP_PlayEnemy() then
		LHCP_Print("LHCP is ignoring enemy emotes",0,1,0);
	end

	if LHCP_IgnoreSpam() then
		LHCP_Print("LHCP is ignoring spammed emotes",0,1,0);
	end

	if LHCP_PlayNsfw() then
		LHCP_Print("LHCP will play NSFW sounds",0,1,0);
	end
	
	if LHCP_RaidIgnore() then
		LHCP_Print("LHCP will ignore all sounds inside raid instances",0,1,0);
	end
end

function LHCP_ToggleGlobalPrefs()
	if LHCP_globalIgnoreMode then
		LHCP_Print("LHCP global preferences disabled");
		LHCP_globalIgnoreMode = false;
	else
		LHCP_Print("LHCP global preferences enabled");
		LHCP_globalIgnoreMode = LHCP_ignoreMode;
	end
end

function LHCP_RaidIgnore()
	return bit.band(LHCP_ignoreMode,LHCP_IGNORE_RAID) ~= 0;
end

function LHCP_ToggleRaidIgnore()
	if LHCP_RaidIgnore() then
		-- clear raid ignore
		LHCP_ignoreMode = bit.band(LHCP_ignoreMode,bit.bnot(LHCP_IGNORE_RAID));
		LHCP_Print("LHCP not ignoring in raid");
	else
		LHCP_ignoreMode = bit.bor(LHCP_ignoreMode,LHCP_IGNORE_RAID);
		LHCP_Print("LHCP ignoring sounds in raid");
	end
end

function LHCP_EnableDebug()
	if(LHCP_debug) then
		LHCP_debug = false;
		LHCP_Print("Debug disabled");
	else
		LHCP_debug = true;
		LHCP_Print("Debug enabled");
	end
end

LHCP_cmds = {
	["list"] = LHCP_List,
	[""] = LHCP_main,
	["help"] = LHCP_help,
	["quiet"] = LHCP_quiet,
	["ignore"] = LHCP_ignore,
	["unignore"] = LHCP_unignore,
	["pvp"] = LHCP_pvp,
	["nospam"] = LHCP_nospam,
	["play"] = LHCP_PrivatePlay,
	["nsfw"] = LHCP_Nsfw,
	["sfw"] = LHCP_Sfw,
	["toggle"] = LHCP_ToggleIgnore,
	["global"] = LHCP_ToggleGlobalPrefs,
	["raidignore"] = LHCP_ToggleRaidIgnore,
	["debug"] = LHCP_EnableDebug,
}

LHCP_lastToggle = nil;

LHCP_toggle = {
	LHCP_nospam,
	LHCP_quiet,
	LHCP_ignore,
	LHCP_unignore,
}

function lhcp_command(msg)
	local argv = {}
	for s in string.gfind(msg, "%a+") do
		table.insert(argv,s);
	end
	
	local cmd = table.remove(argv,1);
	
	if not cmd then
		cmd = "";
	end
	
	local func = LHCP_cmds[cmd];
	
	if func ~= nil then
		func(unpack(argv));
	else
		LHCP_SayOutgoingEmote(cmd);
	end

end

-- our main slash command
SlashCmdList["LHCP"] = lhcp_command;
SLASH_LHCP1 = "/lhcp";


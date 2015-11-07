-- calling this function will blow up LHCP
-- until the files are re-executed
function LHCP_DisposeData()
	LeeroyHillCatsPower_extensions = nil;
	LeeroyHillCatsPower_eastereggs = nil;
	LeeroyHillCatsPower_data = nil;
	LeeroyHillCatsPower_new = nil;
	LeeroyHillCatsPower_about = nil;
	LeeroyHillCatsPower_help = nil;
end

LeeroyHillCatsPower_emotes = {
	"dance", "roar", "cheer", "flex", "threaten",
	"kneel", "charge", "frown", "gasp", "cackle", "cry",
	"open fire", "anger", "drool", "salute", "spit", "no",
	"ready", "sexy", "laugh"
}

LeeroyHillCatsPower_ignoreZones = {
	["Molten Core"] = true,
	["Ahn'Qiraj"] = true,
	["Blackwing Lair"] = true,
	["Caverns of Time"] = true,
	["Naxxramas"] = true,
	["Onyxia's Lair"] = true,
	["Ruins of Ahn'Qiraj"] = true,
	["Zul'Gurub"] = true,
}
table.sort(LeeroyHillCatsPower_ignoreZones);

LeeroyHillCatsPower_extensions = {
	".mp3",
	".wav",
}

LeeroyHillCatsPower_credits = {
	"Leeroy Hill Cats Power Extended",
	"Written by Barogio of Thunderhorn with help from Moomin!",
	"Extended and Optimized by IceLynx, Ruuro, and Basic of Kil'Jaeden",
}

LeeroyHillCatsPower_about = {
	"This is a sound/emote modification. Others with LHCP installed will hear your LHCP emotes",
	"/lhcp help - get extended help",
	"/lhcp list - list all emotes",
	"/lhcp ignore - ignore LHCP",
}

LeeroyHillCatsPower_help = {
	"/lhcp toggle - toggle ignore mode",
	"/lhcp quiet - do not play sounds",
	"/lhcp unignore - play sounds and show emotes",
	"/lhcp pvp - don't play sounds from opposing faction",
	"/lhcp nospam - hide spammed emotes",
	"/lhcp nsfw - play NSFW sounds",
	"/lhcp sfw - don't play NSFW sounds",
	"/lhcp play EMOTE - privately play emote",
	"/lhcp global - toggle global preferences",
	"/lhcp toggle - toggle between the principal ignore modes",
	"/lhcp raidignore - toggle raid ignore (don't play events in raid)",
}


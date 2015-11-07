local dir = "Interface\\AddOns\\LeeroyHillCatsPower\\Audio\\"

if not LeeroyHillCatsPower_eastereggs
  or type(LeeroyHillCatsPower_eastereggs) ~= "table" then
	LeeroyHillCatsPower_eastereggs = {};
end

LeeroyHillCatsPower_eastereggs["benny2"] = {
	["event"] = "CHAT_MSG_RAID",
	["text"] = "AE FEAR ALERT",
	["file"] = dir.."bennyhill2",
};

if not LeeroyHillCatsPower_data
  or type(LeeroyHillCatsPower_data) ~= "table" then
	LeeroyHillCatsPower_data = {};
end

LeeroyHillCatsPower_data["juggernaut"] = {
	["text"] = 		"* Don't you know who I am? *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " is the juggernaut, bitch!",
	["file"] = dir.."juggernaut",
};

LeeroyHillCatsPower_data["hax"] = {
	["text"] = 		"* WTF UBER HAX!!1 *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["emote"] = "gasp",
	["msg"] = " thinks they got new hax!",
	["file"] = dir.."hax",
};

LeeroyHillCatsPower_data["cuppycake"] = {
	["text"] = 		"* You're my cuppycake gumdrop.. *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["emote"] = "giggle",
	["msg"] = " thinks you're the apple of their eye.",
	["file"] = dir.."cuppycake",
};

LeeroyHillCatsPower_data["wonderful"] = {
	["text"] = 		"* Having a wonderful time! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["emote"] = "drool",
	["msg"] = " is having a wonderful time!",
	["file"] = dir.."wonderful time",
};

LeeroyHillCatsPower_data["spinnaz"] = {
	["text"] = 		"* I ride spinnaz... they don't stop... *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " rides spinnaz, also loots!",
	["file"] = dir.."ride spinnaz",
};

LeeroyHillCatsPower_data["ytmnd"] = {
	["text"] = 		"* YOU'RE THE MAN NOW, DOG! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["emote"] = "cheer",
	["msg"] = " thinks you've made a breakthrough!",
	["file"] = dir.."ytmnd",
};

LeeroyHillCatsPower_data["pi"] = {
	["text"] = 		"* 3.141592653589793238.. *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " 3.14159265358979323846264338327950288419716939937510",
	["file"] = dir.."pi",
};

LeeroyHillCatsPower_data["ohsnap"] = {
	["text"] = 		"* OH SNAP! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["emote"] = "ghasp",
	["msg"] = " is suprized.",
	["file"] = dir.."ohsnap",
};

LeeroyHillCatsPower_data["wookies"] = {
	["text"] = 		"* SALSA WOOKIES! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " saw some wookies.",
	["file"] = dir.."o fortuna",
};

LeeroyHillCatsPower_data["gonnadie"] = {
	["text"] = 		"* WE ARE GOING TO DIE :( *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " is not going to make it!",
	["emote"] = "cry",
	["file"] = dir.."hulk-sad piano",
};

LeeroyHillCatsPower_data["youlose"] = {
	["text"] = 		"* You LOSE! Good day sir! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " kicks you out of his factory!",
	["file"] = dir.."you lose",
};

LeeroyHillCatsPower_data["pirate"] = {
	["text"] = 		"* Do what you want 'cuz a pirate is free... *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " is a pirate!",
	["file"] = dir.."pirate",
};

LeeroyHillCatsPower_data["kill"] = {
	["text"] = 		"* I REMEMBER YOU *",
	["AllianceEnemyText"] = 	"ITSOFHGDBF",
	["HordeEnemyText"] = 		"JVOPEHICHKL",
	["msg"] = " flashes back a memory.",
	["file"] = dir.."killbill",
};


LeeroyHillCatsPower_data["fail"] = {
	["text"] = 		"* YOU HAVE FAILED! *",
	["AllianceEnemyText"] = 	"JOPEGHFND",
	["HordeEnemyText"] = 		"FJIOEWHFDN",
	["msg"] = " says you fail!",
	["file"] = dir.."failed",
};

LeeroyHillCatsPower_data["topgun"] = {
	["text"] = 		"* HIGHWAY TO THE DANGER ZONE!! *",
	["AllianceEnemyText"] = 	"GFIGFSDGFJSDKGJKFGSV",
	["HordeEnemyText"] = 		"RYEWITYISBVSDGJHSDFK",
	["msg"] = " RIDES INTO THE DANGER ZONE!",
	["emote"] = "dance",
	["file"] = dir.."topgun",
};

LeeroyHillCatsPower_data["tralala"] = {
	["text"] = 		"* Ooh, you touch my tralala...! *",
	["AllianceEnemyText"] = 	"GWARSHJHOTIH",
	["HordeEnemyText"] = 		"TYIHFDGFGDNTHUCSHFS",
	["msg"] = " thinks you touched their tralala!",
	["emote"] = "dance",
	["file"] = dir.."tralala",
};

LeeroyHillCatsPower_data["hassan"] = {
	["text"] = 		"* AYAYLELEAYALELEALA! *",
	["AllianceEnemyText"] = 	"HHOTHEKLGYIOTHELGL",
	["HordeEnemyText"] = 		"YGYEDLGHLNDFKJYFLLDGHCCKS",
	["emote"] = "roar",
	["file"] = dir.."hassan",
};

LeeroyHillCatsPower_data["barrel"] = {
	["text"] = 		"* DO A BARREL ROLL! *",
	["AllianceEnemyText"] = 	"LGRYIGHDFLH",
	["HordeEnemyText"] = 		"MVGYODHFVLSDGAAA",
	["msg"] = " does a barrel roll!",
	["file"] = dir.."barrelroll",
};

LeeroyHillCatsPower_data["katamari"] = {
	["text"] = 		"* NAA NANANANANA KATAMARI DAMACY! *",
	["AllianceEnemyText"] = 	"NUUU'VOOIHKLFHSL",
	["HordeEnemyText"] = 		"LVHSKLVSL'PIODS'VSHL",
	["msg"] = " rolls a Katamari!",
	["emote"] = "dance",
	["file"] = dir.."katamari",
};

LeeroyHillCatsPower_data["noo"] = {
	["text"] = 		"* NOOOOOOOOO! *",
	["AllianceEnemyText"] = 	"KAAAAAAAAA!",
	["HordeEnemyText"] = 		"MQQQQQQQQQ!",
	["emote"] = "kneel",
	["file"] = dir.."noooo",
};

LeeroyHillCatsPower_data["stole"] = {
	["text"] = 		"* STOLE MY FLAG! *",
	["AllianceEnemyText"] = 	"HFLSD'GHSD'FHSLF!",
	["HordeEnemyText"] = 		"FSDH'SHF'HHS!",
	["msg"] = " chases after their flag thief.",
	["file"] = dir.."stolemybike",
};

LeeroyHillCatsPower_data["whatislove"] = {
	["text"] = 		"* WHAT IS LOVE? *",
	["AllianceEnemyText"] = 	"HHFGSLBN'IOGUS'PLIN?",
	["HordeEnemyText"] = 		"ZHGLHS'GO'OWIH?",
	["msg"] = " swings head back and forth in rhythm.",
	["emote"] = "dance",
	["file"] = dir.."whatislove",
};

LeeroyHillCatsPower_data["moskau"] = {
	["text"] = 		"* MOSKAU! MOSKAU! *",
	["AllianceEnemyText"] = 	"HSVZFGSS'HFLSDLF!",
	["HordeEnemyText"] = 		"GSGHSLSH'YEROWYS!",
	["msg"] = " does the Russian Moskau dance.",
	["emote"] = "dance",
	["file"] = dir.."moskau",
};

LeeroyHillCatsPower_data["rit9"] = {
	["text"] = 		"* Running in the 90's! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " wants to run in the 90s!",
	["emote"] = "dance",
	["file"] = dir.."rit9",
};

LeeroyHillCatsPower_data["crawl"] = {
	["text"] = 		"* CRAWLING IN MY SKIN! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " slits their wrists.",
	["cmd1"] = "wrists",
	["emote"] = "cry",
	["file"] = dir.."crawl",
};

LeeroyHillCatsPower_data["gog"] = {
	["text"] = 		"* The goggles! They do nothing! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " finds that their goggles do nothing!",
	["file"] = dir.."thegoggles",
};

LeeroyHillCatsPower_data["cotc"] = {
	["text"] = 		"* CORN ON THE COB! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " is hungry.",
	["file"] = dir.."cotc",
};

LeeroyHillCatsPower_data["leek"] = {
	["text"] = 		"* Yaa tsi tsup ari.. *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " spins a leek.",
	["file"] = dir.."leek",
};

LeeroyHillCatsPower_data["milks"] = {
	["text"] = 		"* Milkshake! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " claims their milkshake is better.",
	["file"] = dir.."milkshake",
};

LeeroyHillCatsPower_data["pill"] = {
	["text"] = 		"* CRAZY PILLS! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " is going crazy!",
	["emote"] = "roar",
	["file"] = dir.."crazy",
};

LeeroyHillCatsPower_data["bde"] = {
	["text"] = 		"* Best day ever! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " is having the time of their life!",
	["emote"] = "cheer",
	["file"] = dir.."bde",
};

LeeroyHillCatsPower_data["ual"] = {
	["text"] = 		"* Ualuealue! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " adsjhfawshfgiuadhsjnads!",
	["emote"] = "drool",
	["file"] = dir.."ualuealue",
};

LeeroyHillCatsPower_data["epic"] = {
	["text"] =		"* EPIC WoW Maneuver! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " pulls an epic maneuver!",
	["file"] = dir.."ghost love score",
};

LeeroyHillCatsPower_data["nedm"] = {
	["text"] =		"* N E D M *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " thinks not even Doom music would make this better.",
	["emote"] = "dance",
	["file"] = dir.."nedm",
};
	
LeeroyHillCatsPower_data["nint64"] = {
	["text"] =		"* OMG NINTENDO SIXTY-FOUR!!! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " tears furiously into the loots!",
	["emote"] = "gasp",
	["file"] = dir.."nintendo64",
};

LeeroyHillCatsPower_data["demon"] = {
	["text"] =		"* ..is a demon slayer *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " strikes down his enemies with holy light!",
	["file"] = dir.."the mystery song",
};

LeeroyHillCatsPower_data["wrong"] = {
	["text"] =		"* WRONG!!! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " proves you wrong.",
	["file"] = dir.."wrong",
};

LeeroyHillCatsPower_data["sandlol"] = {
	["text"] =		"* SANDLOL! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " has got a jar of dirt!",
	["file"] = dir.."jarofdirt",
};

LeeroyHillCatsPower_data["repressed"] = {
	["text"] =		"* HELP HELP I'M BEIN REPRESSED! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " is being REPRESSED!",
	["file"] = dir.."repressed",
};

LeeroyHillCatsPower_data["napoleon"] = {
	["text"] =		"* You know this boogie is for real. *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " shows his boogie dance skills! Gosh!",
	["emote"] = "dance",
	["file"] = dir.."napoleon",
};

LeeroyHillCatsPower_data["tunak"] = {
	["text"] =		"* Tunak Tunak Tun... *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " mends the tunic!",
	["emote"] = "dance",
	["file"] = dir.."tunaktunak",
};

LeeroyHillCatsPower_data["murloc"] = {
	["text"] = 		"* RLRLRLRLGLRLGLR *",
	["AllianceEnemyText"] = 	"IOEHIOFHNSLFKN",
	["HordeEnemyText"] = 		"IGHEINFGDKLVN",
	["msg"] = " is a murloc!",
	["file"] = dir.."murloc",
};

LeeroyHillCatsPower_data["tehpwnerer"] = {
	["text"] = 		"* So this one time.. *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " is teh_pwnerer.",
	["cmd1"] = "tpr",
	["emote"] = "talk",
	["file"] = dir.."shamanrogue",
};

LeeroyHillCatsPower_data["mcraiders"] = {
	["text"] = 		"* MC Raiders! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["emote"] = "dance",
	["file"] = dir.."mcraiders",
};

LeeroyHillCatsPower_data["shadowform"] = {
	["text"] = 		"* Is shadowform okay? *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " is itchy to melt faces.",
	["cmd1"] = "shf",
	["file"] = dir.."shadowform",
};

LeeroyHillCatsPower_data["druidtank"] = {
	["text"] = 		"* Why don't we have a druid tank Rag? *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " wants a druid to tank Rag.",
	["cmd1"] = "druid",
	["emote"] = "frown",
	["file"] = dir.."druidtank",
};

LeeroyHillCatsPower_data["byh"] = {
	["text"] = 		"* I can be your healer baby! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " assures you that they are 40 yards away.",
	["file"] = dir.."chealers",
};

LeeroyHillCatsPower_data["thrall"] = {
	["text"] = 		"* Club Thrall! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " sees lots of colors!",
	["emote"] = "dance",
	["file"] = dir.."thrall",
};

LeeroyHillCatsPower_data["thrall2"] = {
	["text"] = 		"* Thralls Ball! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " goes into a trance.",
	["emote"] = "dance",
	["file"] = dir.."thrallsball",
};

LeeroyHillCatsPower_data["mreh"] = {
	["text"] = 		"* MREH *",
	["AllianceEnemyText"] = 	"KGHPEHRFSDK",
	["HordeEnemyText"] = 		"IGJEFIHFLDXB",
	["msg"] = " mrehs",
	["file"] = dir.."mreh",
};

LeeroyHillCatsPower_data["whine"] = {
	["text"] = 		"* STOP WHINING! *",
	["AllianceEnemyText"] = 	"WKAHOLGHDLSGFL",
	["HordeEnemyText"] = 		"UPORUGPORGLFHGSB",
	["msg"] = " says stop whining!",
	["file"] = dir.."whine",
};
	
LeeroyHillCatsPower_data["rush"] = {
	["text"] = 		"* Charge! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " orders everyone to charge!",
	["emote"] = "charge",
	["file"] = dir.."CHARGE",
};
	
LeeroyHillCatsPower_data["gover"] = {
	["text"] = 		"* Game Over Man! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " calls a wipe!",
	["emote"] = "cry",
	["file"] = dir.."gameover",
};
	
LeeroyHillCatsPower_data["kame"] = {
	["text"] = 		"* KAMEHAMEHA!!! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " charges energy into his palms!",
	["file"] = dir.."kame",
};

LeeroyHillCatsPower_data["zug"] = {
	["text"] = 		"* I just want to say.. *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " is a mummy!",
	["file"] = dir.."mummyzug256",
};

LeeroyHillCatsPower_data["getcha"] = {
	["text"] = 		"* YOU AINT GETTIN S...! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " does not want to share!",
	["file"] = dir.."getcha",
	["nsfw"] = true,
};

LeeroyHillCatsPower_data["dots"] = {
	["text"] = 		"* MORE DOTS! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " demands more DoTs!",
	["file"] = dir.."moredots",
};

LeeroyHillCatsPower_data["hitit"] = {
	["text"] = 		"* Hit it like ya mean it! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " wants you to put more effort in.",
	["file"] = dir.."hitit",
};

LeeroyHillCatsPower_data["dkp"] = {
	["text"] = 		"* 50 DKP MINUS! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " takes away your DKP!",
	["emote"] = "angry",
	["file"] = dir.."dkp",
	["nsfw"] = true,
};

LeeroyHillCatsPower_data["dots2"] = {
	["text"] = 		"* Need more DoTs! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " wants more DoTs.",
	["file"] = dir.."moredots2",
};

LeeroyHillCatsPower_data["whelps"] = {
	["text"] = 		"* WHELPS! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " aggroed the whelp cave!",
	["file"] = dir.."whelps",
};

LeeroyHillCatsPower_data["atkp"] = {
	["text"] = 		"* 2 F ING AP! *",
	["alttext"] =		"* 2 FUCKING AP! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " gets two AP!",
	["file"] = dir.."twofinap",
	["nsfw"] = true,
};

LeeroyHillCatsPower_data["beast"] = {
	["text"] = 		"* DO YOU KNOW HOW BEAST...! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " hates Huhuran!",
	["emote"] = "angry",
	["file"] = dir.."beast",
	["nsfw"] = true,
};

LeeroyHillCatsPower_data["cloudsong"] = {
	["text"] = 		"* YOU STOLE MY CLOUDSONG! *",
	["AllianceEnemyText"] = 	"PUGPSVLHSDLGSDGSD",
	["HordeEnemyText"] = 		"GHSDGHL'VSHH'NUU",
	["msg"] = " says you stole their cloudsong!",
	["emote"] = "threaten",
	["file"] = dir.."cloudsong",
};

LeeroyHillCatsPower_data["wryy"] = {
	["text"] = 		"* WRYYYYY! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " jumps on someone with a steamroller!",
	["emote"] = "roar",
	["file"] = dir.."WRYYYYYYYYYYY",
};

LeeroyHillCatsPower_data["desu"] = {
	["text"] = 		"* Soshite toki ga ugoki desu. *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " continues time.",
	["file"] = dir.."desu",
};

LeeroyHillCatsPower_data["toki"] = {
	["text"] = 		"* TOKI WO TOMARE! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " prepares to unleash a barage of knives!",
	["file"] = dir.."toki",
};

LeeroyHillCatsPower_data["zaw"] = {
	["text"] = 		"* ZA WARUDO! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " freezes time!",
	["emote"] = "roar",
	["file"] = dir.."zawarudo",
};

LeeroyHillCatsPower_data["mudabu"] = {
	["text"] = 		"* MUDABUDABUDA! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " unleashes a flurry of punches!",
	["file"] = dir.."mudabudabuda",
};

LeeroyHillCatsPower_data["muda"] = {
	["text"] = 		"* MUDADA! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " does not think so!",
	["file"] = dir.."mudada",
};

LeeroyHillCatsPower_data["lls"] = {
	["text"] = 		"* LOVE LOVE SHINE! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " wants to DDR!",
	["emote"] = "dance",
	["file"] = dir.."lls",
};

LeeroyHillCatsPower_data["lind"] = {
	["text"] = 		"* LOVE IS IN DANGER! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " is in danger!",
	["emote"] = "dance",
	["file"] = dir.."lind",
};

LeeroyHillCatsPower_data["nof"] = {
	["text"] = 		"* NIGHT OF FIRE! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " hopes you better say...",
	["emote"] = "dance",
	["file"] = dir.."nof",
};

LeeroyHillCatsPower_data["gp"] = {
	["text"] = 		"* Grand Prix! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " is gripping his steering wheel.... so tight!",
	["emote"] = "dance",
	["file"] = dir.."gp",
};

LeeroyHillCatsPower_data["hb"] = {
	["text"] = 		"* Heartbeat! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " listens to their heartbeat.",
	["emote"] = "dance",
	["file"] = dir.."heart",
};

LeeroyHillCatsPower_data["yatta"] = {
	["text"] = 		"* YATTA! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " bounces from left to right.",
	["emote"] = "dance",
	["file"] = dir.."yatta",
};

LeeroyHillCatsPower_data["unstoppable"] = {
	["text"] = 		"* UNSTOPPABLE! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " is unstoppable!",
	["file"] = dir.."unstoppable",
};

LeeroyHillCatsPower_data["humiliation"] = {
	["text"] = 		"* HUMILIATION! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " just totally noob'd his opponent!",
	["emote"] = "cackle",
	["file"] = dir.."humiliation",
};

LeeroyHillCatsPower_data["rampage"] = {
	["text"] = 		"* RAMPAGE! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " is on a RAMPAGE!",
	["file"] = dir.."rampage",
};

LeeroyHillCatsPower_data["ultrakill"] = {
	["text"] = 		"* ULTRA KILL! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " has become invincible!",
	["file"] = dir.."ultrakill",
};

LeeroyHillCatsPower_data["killingspree"] = {
	["text"] = 		"* KILLING SPREE! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " is on a Killing Spree!",
	["file"] = dir.."killingspree",
};

LeeroyHillCatsPower_data["prepare"] = {
	["text"] = 		"* PREPARE TO FIGHT! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " hits B, 8, 2, B, 4, 2, B, 1, and 4!",
	["file"] = dir.."prepare",
};

LeeroyHillCatsPower_data["xkill"] = {
	["text"] = 		"* MULTI KILL! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " is a mindless killer!",
	["file"] = dir.."xkill",
};

LeeroyHillCatsPower_data["mkill"] = {
	["text"] = 		"* MONSTER KILL! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " is a monster!",
	["emote"] = "roar",
	["file"] = dir.."monsterkill",
};

LeeroyHillCatsPower_data["glike"] = {
	["text"] = 		"* GOD LIKE! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " is a GOD!",
	["file"] = dir.."godlike",
};

LeeroyHillCatsPower_data["bomb"] = {
	["text"] = 		"* SOME SET US UP THE BOMB! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " planted the bomb!",
	["file"] = dir.."bomb",
};


LeeroyHillCatsPower_data["headshot"] = {
	["text"] = 		"* HEADSHOT *",
	["AllianceEnemyText"] = 	"HGPERIHGDNFGV",
	["HordeEnemyText"] = 		"IEOFSSLBDLS",
	["cmd1"] = "shot",
	["msg"] = " crits for HEADSHOT!",
	["file"] = dir.."headshot",
};

LeeroyHillCatsPower_data["fpsdoug"] = {
	["text"] = 		"* IT'S LIKE BOOM HS!! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " molds his hands into holding an Arctic Warfare Magnum.",
	["file"] = dir.."BOOMHS",
};

LeeroyHillCatsPower_data["venga"] = {
	["text"] = 		"* RIDE THE VENGABUS *",
	["AllianceEnemyText"] = 	"SALDDOHGDLGDB",
	["HordeEnemyText"] = 		"OBFSGFDGHLHFS",
	["msg"] = " jumps on the Vengabus!",
	["emote"] = "dance",
	["file"] = dir.."venga",
};

LeeroyHillCatsPower_data["goninja"] = {
	["text"] = 		"* GO NINJA GO NINJA GO! *",
	["AllianceEnemyText"] = 	"YGIODFHKLVJKGBH",
	["HordeEnemyText"] = 		"HJKLGEHSLKGHDJKXGFJJGHGK",
	["cmd1"] = "ninja",
	["msg"] = " busts out the ninja moves!",
	["file"] = dir.."ninja",
};
	
LeeroyHillCatsPower_data["matrix"] = {
	["text"] = 		"* THERE IS NO SPOON! *",
	["AllianceEnemyText"] = 	"HGYOGDKJDSJKFGHFUSS",
	["HordeEnemyText"] = 		"RWRYIWUTYFKSDYFDKGGGSHHS",
	["msg"] = " dodges bullets.",
	["emote"] = "flex",
	["file"] = dir.."matrix",
};

LeeroyHillCatsPower_data["ymca"] = {
	["text"] = 		"* Y M C A! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " has no need to feel down!",
	["emote"] = "dance",
	["file"] = dir.."YMCA2",
};

LeeroyHillCatsPower_data["ebn"] = {
	["text"] = 		"* Everybody Dance Now! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " dances like they were in a gay steel mill factory!",
	["emote"] = "dance",
	["file"] = dir.."EBN",
};
LeeroyHillCatsPower_data["ctt"] = {
	["text"] = 		"* Can't touch this! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " is untouchable!",
	["emote"] = "dance",
	["file"] = dir.."CTT",
};

LeeroyHillCatsPower_data["dogs"] = {
	["text"] = 		"* Who let the dogs out! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " wants to know who aggrod the dogs!",
	["emote"] = "gasp",
	["file"] = dir.."dogs",
};

LeeroyHillCatsPower_data["itn"] = {
	["text"] = 		"* In the Navy! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " wants to sail the seven seas!",
	["emote"] = "dance",
	["file"] = dir.."itn",
};

LeeroyHillCatsPower_data["bj"] = {
	["text"] = 		"* Billie Jean! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " claims the kid is not their son!",
	["emote"] = "dance",
	["file"] = dir.."billiejean",
};

LeeroyHillCatsPower_data["watchu"] = {
	["text"] = 		"* Wutchu watin for! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " wonders why you wait.",
	["emote"] = "dance",
	["file"] = dir.."watchu",
};

LeeroyHillCatsPower_data["benny"] = {
	["text"] = 		"* gives it some Benny Hill! *",
	["AllianceEnemyText"] = 	"no'bu ag grom No'ku Zaga",
	["HordeEnemyText"] = 		"nagan an vrum Barad Lars",
	["msg"] = " gives it some Benny!",
	["cmd1"] = "bh",
	["emote"] = "dance",
	["file"] = dir.."bennyhill",
};

LeeroyHillCatsPower_data["leeroy"] = {
	["text"] = 		"* invokes the power of Leeroy Jenkins! *",
	["AllianceEnemyText"] = 	"sturume ras majis va Valesh Lithtos",
	["HordeEnemyText"] = 		"rath'is mog regas gi Moguna Tov'osh",
	["msg"] = " invokes the power of Leeroy Jenkins!",
	["emote"] = "roar",
	["file"] = dir.."leeroy",
};

LeeroyHillCatsPower_data["tcats"] = {
	["text"] = 		"* Thundercats HO *",
	["AllianceEnemyText"] = 	"Farlandowar RU",
	["HordeEnemyText"] = 		"zug'ama MU",
	["msg"] = " screams Thundercats HO!",
	["cmd1"] = "thundercats",
	["file"] = dir.."thundercatsho",
};

LeeroyHillCatsPower_data["power"] = {
	["text"] = 		"* BY THE POWER OF GREYSKULL *",
	["AllianceEnemyText"] = 	"SE RAS MAJIS VA REGENTHOR",
	["HordeEnemyText"] = 		"KO MOG REGAS GI GESH'NUKA",
	["msg"] = " screams BY THE POWER OF GREYSKULL!",
	["file"] = dir.."heman",
};

LeeroyHillCatsPower_data["finalfantasy"] = {
	["text"] = 		"* Attacked by Green Ogre! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["cmd1"] = "ff",
	["msg"] = " warns you of an approaching enemy!",
	["file"] = dir.."ff-fightsong-start",
};

LeeroyHillCatsPower_data["finalfantasyloop"] = {
	["text"] = 		"* Green Ogre 6hits -9999! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["cmd1"] = "ffl",
	["msg"] = " is locked in combat!",
	["file"] = dir.."ff-fightsong-loop",
};

LeeroyHillCatsPower_data["win"] = {
	["text"] = 		"* YOU ARE A WINNER! *",
	["AllianceEnemyText"] = 	"PGOHEIPFHDKLN",
	["HordeEnemyText"] = 		"EIOPHFDKLNCDL",
	["msg"] = " declares you a winner!",
	["emote"] = "cheer",
	["file"] = dir.."victory",
};

LeeroyHillCatsPower_data["rocky"] = {
	["text"] = 		"* Who wants to PVP! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " is ready for some PVP!",
	["emote"] = "flex",
	["file"] = dir.."rocky",
};

LeeroyHillCatsPower_data["rff"] = {
	["text"] = 		"* FEUER FREI! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " points at the enemy!",
	["emote"] = "openfire",
	["file"] = dir.."rff",
};

LeeroyHillCatsPower_data["naruto"] = {
	["text"] = 		"* NARUTARD POWA! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " has gone beserk because their seal is broken!",
	["emote"] = "roar",
	["file"] = dir.."hv",
};

LeeroyHillCatsPower_data["pkmn"] = {
	["text"] = 		"* Gotta catch em all! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " knows it is their destiny!",
	["file"] = dir.."pokemon",
};

LeeroyHillCatsPower_data["pkmn2"] = {
	["text"] = 		"* Wild NUB wants to fight! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " chooses you!",
	["file"] = dir.."pokemon2",
};

LeeroyHillCatsPower_data["pwrr"] = {
	["text"] = 		"* GO GO POWER RANGERS! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " thinks its morphin time!",
	["emote"] = "flex",
	["file"] = dir.."pwrrngs",
};

LeeroyHillCatsPower_data["ateam"] = {
	["text"] = 		"* The A TEAM! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " summons the A TEAM!",
	["emote"] = "roar",
	["file"] = dir.."ateam",
};

LeeroyHillCatsPower_data["mortal"] = {
	["text"] = 		"* MORTAL KOMBAT! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " scores BRUTALITY!",
	["emote"] = "roar",
	["file"] = dir.."mortal",
};

LeeroyHillCatsPower_data["imp"] = {
	["text"] = 		"* DUN DUN DUN! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " marches in lockstep.",
	["emote"] = "salute",
	["file"] = dir.."imperial_march",
};

LeeroyHillCatsPower_data["tiger"] = {
	["text"] =		"* Eye of the Tiger! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " has the eye.... of the tiger!",
	["emote"] = "ready",
	["file"] = dir.."eyeofthetiger",
};


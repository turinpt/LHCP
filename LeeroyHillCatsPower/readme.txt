LeeroyHillCatsPower provides extended audio emotes! BEST RELEASE EVAR!

This remake incorporates sounds from previous LHCP as well as sounds from IceLynx, Ruuro, and other members of <The Collective> of Kil'Jaeden.

The greatest benefit of this rewrite is the ease of extending LHCP. Here is an example entry in LeeroyHillCatsPower_data:

["wrong"] = {
	["text"] =		"* WRONG!!! *",
	["AllianceEnemyText"] = 	"",
	["HordeEnemyText"] = 		"",
	["msg"] = " proves you wrong.",
	["emote"] = "no",
	["file"] = "Interface\\AddOns\\LeeroyHillCatsPower\\wrong",
},

(yes, that's right - no file extension, LHCP will search for .wav or .mp3 files)

You may release mods which add to this table. Make sure to add to the table before the first PLAYER_ENTERING_WORLD event, which is when this table is indexed for efficient parsing of the incoming text.

Also of great importance are the LHCP ignoring functions! Use /lhcp ignore to completely ignore the mod and filter the emote spamming.


FAQ!
Q: WARE ARE SOUNDZ MANG?
A: Go download all the sound packs! (listed in supporting addons) Or make your own!

Q: Is LHCP slow?
A: No, it's as efficient as LUA script could possibly be. (send constructive feedback if you think otherwise)

Q: /dkp doesn't work!
A: That sound and a few others (/getcha, /beast, /atkp, etc) are not safe for work/children. Do "/lhcp nsfw" to unlock these sounds.

Q: I DON'T LIKE SPAM!
A: Try the various ignore/nospam modes with "/lhcp toggle". You can download the CORE mod and no sound files to protect yourself from LHCP spam! "/lhcp nospam" will also protect you from many spammed emotes, including /spit!!! (operates on refreshing 5 second text-specific ignore)

Q: It doesn't work when I'm dead.
A: Nope, LHCP uses /say to deliver it's messages. You can listen to sounds when dead or on a taxi by using "/lhcp play leeroy" (leeroy is the sound name).

Q: DMCA Notice...
A: All sound files are downsampled below CD quality and most are of a maximum length of 30 seconds. Please contact the mod author with any concerns and I will comply as required by law.

Q: Why don't the horde/allies dance with me?
A: Sorry, faction translations aren't done yet. If you are Horde on Kil'Jaeden you can help me!


Thanks to everyone who has contributed to LHCP:
LHCP was originally written by Barogio of Thunderhorn with help from Moomin.
Based on Benny Hill mod by Catalyst + Springbeart of Thunderhorn.
Extended and Optimized by IceLynx, Ruuro, and Basic of Kil'Jaeden.

Special thanks to AnduinLothar (KarlKFI)


Commands:
/lhcp list - list all sound emotes
/lhcp quiet - do not play sounds
/lhcp raidignore - suppress all LHCP text, emotes, and sounds when you are in a raid intance
/lhcp ignore - suppress all LHCP text, emotes, and sounds
/lhcp unignore - show all LHCP text, emotes, and sounds
/lhcp pvp - suppress all LHCP text, emotes, and sounds from enemy players
/lhcp nospam - suppress spammed emotes!
/lhcp play leeroy - play "leeroy" privately
/lhcp nsfw - turn on NSFW sounds
/lhcp sfw - turn off NSFW sounds
/lhcp global - save your LHCP settings to all characters
/lhcp debug - used for developer feedback and bug reporting


KNOWN ISSUES

* wav files will not function on Mac OSX clients until WoW client 1.12 is released: http://forums.worldofwarcraft.com/thread.aspx?FN=wow-interface-customization&T=398491&P=2#blizzard

CHANGELOG

August 15, 2006
* Fixed chat filtering.
* Multiple window filtering supported.
* Enable/Disable sound categories - they are separate addons now!
* Fixed some corrupted sounds.
* Recommended that you delete your LHCP directory for this update.
* Added: /lhcp raidignore - ignore emotes inside raid instances
* Added: /lhcp global - toggle use global settings
* Added: /lhcp toggle - toggle ignore mode

July 17, 2006
* Fixed, if your default chat area does not display /say messages then some chat lines in that window may be lost.
* Added Not Safe For Work flag to the following sounds: beast, dkp, getcha, atkp. Use /lhcp nsfw to enable or /lhcp sfw to disable (default disabled).
* Fixed, when in a raid this nil exception may occur: ../Addons/LeeroyHillCatsPower/LeeroyHillCatsPower.lua:264: bad argument #2 to `find\\\' (string expected, got nil)

July 14, 2006 - Complete rewrite by Basic of Kil'Jaeden

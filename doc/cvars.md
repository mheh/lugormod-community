[b][u]lmd_maxSameIp[/u][/b]
[b]Default: 3[/b]
Maximum number of users that can have the same ip.  Once this limit is reached for a certain ip, all new connections from the ip will be ignored.  Usefull for stopping fake player attacks.

[b][u]lmd_autoBanSameIp[/u][/b]
[b]Default: 0[/b]
If lmd_maxsameip is set, then this cvar controls whether to ban ips that go over the given limit.

[b][u]lmd_datapath[/u][/b]
[b]Default: default[/b]
[b]Restart required[/b]
The data path that lugormod will use for its accounts, entity sets, and other files.

[b][u]lmd_startingCr[/u][/b]
[b]Default: 0[/b]
The number of credits a newly registered player starts with

[b][u]lmd_stashRate[/u][/b]
[b]Default: 60000[/b]
The time in miliseconds to wait between checking to spawn a stash.  This time is offset by a random value, and may not spawn a stash each check.

[b][u]lmd_stashDepoTime[/u][/b]
[b]Default: 15000[/b]
The time in miliseconds needed to deposit a stash.

[b][u]lmd_stashCr[/u][/b]
[b]Default: 10[/b]
The default number of credits in a stash.  This is only used in the new lmd_stash* entity set, and only if no credits value is already given.

[b][u]lmd_adminGodLevel[/u][/b]
[b]Default: 1[/b]
[b]Restart required[/b]
The minimum admin level required to be able to use the God profession.  Set this to 0 to disable it fully.  Only admins this level and lower will be able to view and select this profession.  If an admin has this profession and this value is lowered below the admin's level, they will NOT loose the profession.This only applies to automatically created level based admin.  Authfiles must specify it manually via an authflag.

[b][u]lmd_adminCheatLevel[/u][/b]
[b]Default: 3[/b]
The minimum admin level required to be able to use cheats.  Set this to 0 to disable it.  This only applies to automatically created level based admin.  Authfiles must specify it manually via an authflag.

[b][u]lmd_saveAllPlaced[/u][/b]
[b]Default: 0[/b]
Allow all entities created with the place command to save.  This is for those of you who got too used to the bug which caused this to happen in the first place.  By default, only entities created by admins with the "save placed" auth flag or the level 1 auto authfile will save

[b][u]lmd_enforceEntWait[/u][/b]
[b]Default: 600[/b]
[b]Restart required[/b]
Minimum time in miliseconds to force certain entities to have a delay.  This works on func_doors and trigger_multiples.  Use this if the map you are playing on has troublesome doors that constantly open and close when the use button is tapped.

[b][u]lmd_spTurrets[/u][/b]
[b]Default: 0[/b]
[b]Restart required[/b]
This reverses spawnflags 4 and 8 for the misc_turretG2 entity.  Only turn this on if you are playing on a single player map that has turrets.

[b][u]lmd_adminLogLevels[/u][/b]
[b]Default: 1[/b]
[b]Restart required[/b]
Weather or not to log commands for the default admin levels.
Set this to 1 to log all levels to seperate files, or 2 to log them all to the file set by lmd_admindefaultlogfile

[b][u]lmd_adminDefaultLogFile[/u][/b]
[b]Default: all[/b]
[b]Restart required[/b]
Admins who have no other logfile set will log to this by default.Logs appear under <data folder>/logs/admin/*.log

[b][u]lmd_chatDisable[/u][/b]
[b]Default: 0[/b]
Bitmask to disable certain chat types.
1: Normal
2: Team
4: Tell
8: Admin
16: Close
32: Buddies
64: Friends

[b][u]lmd_chatDisableUseSay[/u][/b]
[b]Default: 0[/b]
If a chat mode is disabled with lmd_chatdisable, send is as normal chat rather than blocking it.
Does not work for tell.

[b][u]lmd_chatPrimary[/u][/b]
[b]Default: 1[/b]
Set the default chat mode for say.  If this mode is disabled, the mod will seek the next enabled mode.
Values:
0: Say
1: Team
2: Admins
3: Close
4: Buddies
5: Friends

[b][u]lmd_chatSecondary[/u][/b]
[b]Default: 4[/b]
Set the default chat mode for team say.  If this mode is disabled, the mod will seek the next enabled mode.
Values:
0: Say
1: Team
2: Admins
3: Close
4: Buddies
5: Friends

[b][u]lmd_banFile[/u][/b]
[b]Default: bans.txt[/b]
The file to store bans to.

[b][u]lmd_vehcloaking[/u][/b]
[b]Default: 0[/b]
Allow the cloak item to be used when in a vehicle.
To activate, a player must use the hotkey to directly use the cloak item.

[b][u]lmd_accBaseDays[/u][/b]
[b]Default: 0[/b]
Number of days to keep an account between user logins.

[b][u]lmd_accLevelDays[/u][/b]
[b]Default: 7[/b]
Level modifier for days to keep an account between user logins.
Days added is account level multiplied by this value.

[b][u]lmd_accLevelDiscount_time[/u][/b]
[b]Default: 300[/b]
Time in seconds of active server play per 1 CR discount to the cost of a new level, starting at their last level up.
Set to 0 for no discount

[b][u]lmd_accLevelDiscount_maxTime[/u][/b]
[b]Default: 432000[/b]
Time in seconds from their last level up before a player stops receiving a time based discount to their next level up.
Set to 0 for no maximum limit.

[b][u]lmd_accMaxDays[/u][/b]
[b]Default: 70[/b]
Maximum number of days to keep an account between user logins.

[b][u]lmd_logArchive[/u][/b]
[b]Default: 1[/b]
[b]Restart required[/b]
Create a new log file every day.  Records them under "logs/<date>.log"
Only checks for new days on map changes.

[b][u]lmd_closeChatRadius[/u][/b]
[b]Default: 512[/b]
Ajust the radius for the close chat mode.

[b][u]lmd_closeChatLOS[/u][/b]
[b]Default: 0[/b]
If set to 1, close chat is only hearable by those directly visible to the person chatting.

[b][u]lmd_loginSecurity[/u][/b]
[b]Default: 2[/b]
If set to 0, users will not be required to use a security code, but can if they choose.
If set to 1, users must enter their security code if they are logging in with a new ip.
If set to 2, only admins are required to use a security code.
It is highly recommended you set this to 1 or 2.

[b][u]bot_enableChat[/u][/b]
[b]Default: 1[/b]
Enable bot chat.

[b][u]g_startingWeapons[/u][/b]
[b]Default: 0[/b]
Players will get these weapons in addition to their normal set.

[b][u]g_startingAmmo[/u][/b]
[b]Default: 0[/b]
The percent of each weapon's maximum ammo to load the starting weapons with.  This only affects weapons listed in g_startingWeapons.

[b][u]lmd_penaltyAddTime[/u][/b]
[b]Default: 20[/b]
The minimum time in seconds between penalizing a player.

[b][u]lmd_penaltyRemoveTime[/u][/b]
[b]Default: 60[/b]
The time in seconds to wait after a penalty or a previous removal to remove one penalty.

[b][u]lmd_penaltyJailCount[/u][/b]
[b]Default: 3[/b]
How many penalties needed to jail a player.  Set to 0 to never jail on penalties.

[b][u]lmd_penaltyJailTime[/u][/b]
[b]Default: 5[/b]
When jailing  a player due to penalties, how many minutes to jail them for.

[b][u]lmd_penaltyTmpbanCount[/u][/b]
[b]Default: 6[/b]
How many penalties needed to temporarily ban a player.  Set to 0 to never jail on penalties.

[b][u]lmd_penaltyTmpbanTime[/u][/b]
[b]Default: 0[/b]
When banning a player due to penalties, how many minutes to ban them for.  A value of 0 will use the value in g_tmpBanTime.

[b][u]lmd_allowEmptyHostname[/u][/b]
[b]Default: 1[/b]
Prevent a player from joining if the attempt to identify their hostname fails.

[b][u]lmd_enableCorpseDrag[/u][/b]
[b]Default: 0[/b]
Experimental.  Enable dragging corpses with the use key.

[b][u]lmd_rewardcr_kill[/u][/b]
[b]Default: 0[/b]
Give a player credits for killing other players.  Does not work for killing NPCs.

[b][u]g_noVoteTime[/u][/b]
[b]Default: 5[/b]
Number of minutes to wait after a map change before votes are allowed again.  This does not apply to admins level 3 or lower.

[b][u]g_autoRandomSpots[/u][/b]
[b]Default: 1[/b]
[b]Restart required[/b]
When certain lugormod specfic game modes are turned on, some items get disabled.  This will convert those disabled items into random_spots temporarily.
Due to recent entity system changes, this currently does not affect the g_weaponDisable cvar.

[b][u]g_scorePlums[/u][/b]
[b]Default: 0[/b]
When a player gets a score change, everyone will see a small colored number float up from their head with the number of points gained/lossed.

[b][u]g_maxForceLevel[/u][/b]
[b]Default: 5[/b]
This is the maximum force level that players can get.  Changing this may hamper the jedi profession.

[b][u]g_checkSkin[/u][/b]
[b]Default: 1[/b]
Stop players from using skin setups that might result in invisible or untextured players.

[b][u]g_gameMode[/u][/b]
[b]Default: 0[/b]
[b]Restart required[/b]
Settings for the lugormod-specific game modifiers.
TODO: describe game modes and values.

[b][u]g_chickenTime[/u][/b]
[b]Default: 600[/b]
If set, a player will loose points if they do not respond to a duel challenge by another player within this many seconds.  This does not apply if you are challenged by a bot.  Set to 0 to disable this rule.

[b][u]g_fixShields[/u][/b]
[b]Default: 0[/b]
If no lugormod game mode is set, then the shield item will have 500 health and will regenerate 20 points per second.

[b][u]g_allowBlackNames[/u][/b]
[b]Default: 0[/b]
Allow players to use the color black in their names.

[b][u]g_profanityFile[/u][/b]
[b]Default: [/b]
Specifies the config file to load data for the profanity filter.

[b][u]g_fixForce[/u][/b]
[b]Default: 0[/b]
Activates changes/improvements for certain forcepowers.
TODO: list values and changes.

[b][u]g_nakenAddress[/u][/b]
[b]Default: [/b]
The ip or hostname of a naken chat server.  If this is set, the game will attempt to join the specified server and send all player chat to it.
WARNING: may cause the server to freeze.

[b][u]g_nakenRoom[/u][/b]
[b]Default: ja[/b]
If g_nakenAddress is set, this is the chat room to join.

[b][u]g_grapplingHook[/u][/b]
[b]Default: 0[/b]
If this is set to 1, then the stun baton alt fire becomes a grappling hook.
If this is set to 2, then the stun baton will always fire the hook no matter what attack is used.

[b][u]g_disableSpec[/u][/b]
[b]Default: 0[/b]
A bitmask containing different options for spectators.
1: Spectators will not be able to move.
4: Spectators will be unable to follow players.
This does not affect admins level 2 or lower.

[b][u]g_cmdLvlFile[/u][/b]
[b]Default: [/b]
The lugormod config file to load admin command level information from.

[b][u]g_dontLoadNPC[/u][/b]
[b]Default: 1[/b]
This cvar has the following effects when enabled:
Disables the fx_rain entity.
Disables loading of npc navigation waypoints.
Disables point_combat entities.
Allows doors with 'toggle' and 'start locked' spawnflags to still be used after they are unlocked.
Makes the 'misc_security_panel' entity toggle mover states between locked and unlocked.
Makes one-time use 'target_scriptrunner' entities become infinite use with a 60 second wait between triggerings.
Enables spawnflags 1 (player only) and 8 (npc only) for the 'trigger_push' entity.
Forces spawnflag 2048 (multiple) on the 'trigger_push' entity.
Reverses the effect of spawnflag 16 (relative) on the 'trigger_push' entity.
Changes the spawnflag 'push_constant' from 2 to 32 on the 'trigger_push' entity.
Forces trigger_hurt to always toggle on/off when used.
Forces spawnflag 1024 and changes the model of the 'emplaced_gun' entity.

[b][u]g_tmpBanTime[/u][/b]
[b]Default: 20[/b]
Number of minutes that a temporary ban lasts.

[b][u]g_kingTime[/u][/b]
[b]Default: 600[/b]
Number of seconds the 'duel king' has to find another opponent to duel before they loose king status.

[b][u]g_motdDispTime[/u][/b]
[b]Default: 5[/b]
Number of seconds to display the motd to a newly joined player.

[b][u]g_disableBail[/u][/b]
[b]Default: 0[/b]
Disable players bailing out of a flying vehicle when it is still airborn.

[b][u]g_voteFix[/u][/b]
[b]Default: 0[/b]
If the yes votes are greater than the no votes on a vote completion, then consiter the vote passed.
This does not affect player kick votes.

[b][u]g_maxVoteCount[/u][/b]
[b]Default: 3[/b]
The maximum number of votes a player can make.  This does not affect admins.

[b][u]g_enterMotd[/u][/b]
[b]Default: [/b]
The message a player will see when they join the game.

[b][u]g_cmdDisable[/u][/b]
[b]Default: 0[/b]
A bitmask for disabling certain commands or feature sets.
TODO: document what this does.

[b][u]g_nameForServer[/u][/b]
[b]Default: server[/b]
The name to use when sending chat with '/rcon say'.

[b][u]g_duelForcePowerDisable[/u][/b]
[b]Default: 0[/b]
[b]Restart required[/b]
Bitmask of forcepowers to disable when in the duel or power duel gametype.

[b][u]g_pickupDisable[/u][/b]
[b]Default: 0[/b]
[b]Restart required[/b]
Bitmask of items to disable.
TODO: document possible values.

[b][u]g_meditateProtect[/u][/b]
[b]Default: 0[/b]
Number of miliseconds to wait before granting invincibility to someone using the meditation taunt.  Disabled if 0.

[b][u]g_meditateExtraForce[/u][/b]
[b]Default: 100[/b]
If a player uses the meditation taunt, then increase their max forcepower by this amount for the duration of the taunt.
DANGER: Can severely unbalance the game!  It is highly recommended you leave this as-is to avoid placing non force using professions at a severe disadvantage.


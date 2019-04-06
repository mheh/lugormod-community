# Lugor OG Community Server

Server address: jkja.milo-h.com:29760

<a href="https://www.gametracker.com/server_info/136.49.69.233:29760/" target="_blank"><img src="https://cache.gametracker.com/server_info/136.49.69.233:29760/b_560_95_1.png" border="0" width="560" height="95" alt=""/></a>

The aim is to provide a good environment for users to play in, while experimenting with modifications.

This server is a community hosted Lugormod server, allowing additional plugins and server configuration through github. It is updated upon submissions. 

No one is an admin on this version due to concerns with saving entities (/n is broken within mapentities for target_print, etc, when saved or loaded). Rcon is required to save.

 If you would like to become an admin, the highest level is level 2.  You may submit changes to cmdleveldefs.cfg to control the commands.  Administration is open pending pushes.  If your pushes are good you'll be an admin.

## Server Guides

The server is running with: 
```
linuxjampded
JASS 3.2.0
lugormod 1.2.2
```

Additonal PK3s:
```
ext_data.pk3 - Contains NPC changes - flying swoop and x-wing modifications
Lugormod.pk3 - Original .pk3 from Lugor
maps.pk3 - Maps, currently in rotation, that have removed trigger_hurt among other removed entities.
```

### Settings location:
```
jass.ini
	JASS (Jedi Academy Server Security) configuration for loading plugins

jka_*
	Restart scripts for the server.

lugormod/
	Not included:
		lugormod/reggednicks/ - Holds account information

lugormod/ban.sh
	Ban Shell script, unused currently, for JASS

lugormod/cmdleveldefs.cfg
	Set command levels for lugormod commands.  Lugormod has 4 adminlevels.

lugormod/jassconfig.cfg
	Settings for JASS plugins.

lugormod/map_rotation.cfg
	VSTRS for map rotation

lugormod/plugins
	JASS plugins
		academy5.so - Fixed spawnpoints for academy5.bsp
		antiddos.so - AntiDDOS support
		protection.so - Server protection

lugormod/server_cvars.cfg
         - Server CVARs not included:
                dedicated "2"
                gamename "Lugormod" - JASS changes this for some reason
                sv_hostname
                g_motd
                g_enterMotd
                g_motdDisplayTime "10"
                rconpassword
                sv_privatepassword  ""
                sv_privateClients  "0"
```

### This repository

You're welcome to clone this repository to work on maps, work on plugins and make changes before submitting them. There are files ignored by git that are only to protect administrator access.

Building is available on maps through pushes.

Submitting a plugin for JASS requires you to include the source in the /plugin-src directory of lugormod. This is for two cases, to enhance the community and for security sake.  Please discuss with me beforehand if you would like to not have the source made public.

map-rotation.cfg is editable for customization of maps (gametypes, motds, plugin loading).

### Installing

Cloning this repository will download folders which should be hosted within .ja, if running linuxjampded on linux. Locations of files should be located within:

```
/home/<username>/.ja/
```

The finished directory paths should be as follows:

```
/home/<username>/.ja/base/
/home/<username>/.ja/lugormod/
/home/<username>/.ja/linuxjampded
/home/<username>/.ja/ <other files such as restart scripts, jass.ini, etc>
```

In order to host your own server you'll need asset files located in base

Within the base folder:
```
assets0.pk3  assets2.pk3  cgamei386.so  jampgamei386.so  uii386.so
assets1.pk3  assets3.pk3
```

In addition to these files, you'll need to create a file: server.cfg within the lugormod folder that includes one line.
```
exec server_cvars.cfg
```

As well, copy and paste the cvars listed as not included, into the server.cfg file.
An example server.cfg:
```
// Server Admin Config
seta dedicated "1" // 1 - Local, 2 - Internet
seta sv_hostname "My Servername on Local Tab of "Join a Server""
seta g_motd "Displayed when loading a map"
seta g_enterMotd "Text on screen when entering game" // Use /n for a new line
seta g_motdDispTime "10" // time in seconds to display g_enterMotd
seta rconpassword "mypassword" // When you enter the game, set your rconpassword to this cvar to use /rcon 

// Execute server CVARS server_cvars.cfg
// This executes the rest of the cvars
exec server_cvars.cfg
```

Once these files have been created, you should be able to launch a dedicated local server on your linux machine.

To do this, change to the directory with linuxjampded in it 
```
cd /home/<username>/.ja/
```

Then type
```
./linuxjampded +set fs_game lugormod +exec server.cfg
```
Which should launch the server in your terminal window. And be available for connecting to on your local network.
If you encounter errors running it, please make sure you have 32-bit dependencies and libcxa.so.1 in /usr/lib/

For Ubuntu:
```
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386
```

In the future if we migrate to openJK - currently there are segmentation faults that prohibit this lugormod from running within JASS on openJK, the locations will be updated.


## Becoming an admin

First connect to your server, change your name from Padawan (if it's Padawan), and create an account with /regnick <password> - change the password and remove the < > from it.
Following the steps is creates, login with 
```
/login <ID> <password>
```

Set your rconpassword to what your server's rconpassword is set to.  Accomplish this with 
```
/rconpassword <rconpassword of server>
```

Then type 
```
/rcon makeadmin <ID> 1
```

Now, assuming you're not running OpenJK, which takes control over /help, you should be able to type /help and view all available commands to the administrator.

### Future Changes

Right now, this is running within a container.  In the futre, I hope to incorporate a website with statistics through Prometheus.

This is a hobby, I am primarily a student and pianist, so I am hosting this in good faith that it will be beneficial to the community.

In addition, depending on costs, multiple servers.

## Authors

* Milo Hehmsoth - Primary Commit

## Acknowledgments

* Ravensoft and LucasArts for creating the game
* Lugor for creating the original Lugormod
* RoboPhred for the continued work on Lugormod from Lugor
* Ufo for the continued work on Lugormod from RoboPhred
* BufferOverflow/Zlyden for creating [JASS](http://jass.ucoz.net/)

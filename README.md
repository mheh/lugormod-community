# Lugormod U# 2.4.5.4 Blank Server

This is a setup of lugormod 1.2.2 ready to go for linux servers. It has everything installed so you can copy these files to your directory and launch the server with ./jka_start
Alternatively you can start the automatic restart scripts by executing two of them: ./jka-restarter.sh and ./jka_autorestart.sh

Check the other branches for the servers linked to github on this account.

## Server Guides

The server is running with: 
```
linuxjampded
lugormod 1.2.2
```

### Settings location:
```
lugormod/

lugormod/cmdleveldefs.cfg
	Set command levels for lugormod commands.  Lugormod has 4 adminlevels.

lugormod/server.cfg
	Set cvars, map rotations and other things that are executed when the server starts.
```

### Installing

Wherever you download this folder, merge it into your existing jedi academy folder.

Commonly:
```
/home/<username>/.ja/
```
or for OpenJK
```
/home/<username>/.local/share/openjk/
```

The finished directory paths should be as follows:

```
/home/<username>/.ja/base/
/home/<username>/.ja/lugormod/
/home/<username>/.ja/linuxjampded
/home/<username>/.ja/pdb.so
/home/<username>/.ja/
```
or for OpenJK installs
```
/home/<username>/.local/openjk/base/
/home/<username>/.local/openjk/lugormod/
/home/<username>/.local/openjk/openjkded.i386
/home/<username>/.local/openjk/pdb.so
/home/<username>/.local/openjk/
```

### If you're piecing together a server

In order to host your own server you'll need asset files.
Within the base folder:
```
assets0.pk3  assets2.pk3  cgamei386.so  jampgamei386.so  uii386.so
assets1.pk3  assets3.pk3
```

Once these files have been created, you should be able to launch a dedicated local server on your linux machine.

Type this when you're in the folder that has linuxjampded or openjkded.i386 in it.
```
./linuxjampded +set fs_game lugormod +exec server.cfg
```

This should launch the server in your terminal window. And be available for connecting to on your local network.

## If you encounter errors please check these things.

For the linuxjampded executable under Ubuntu, you must install libc6, libncurses5 and libstdc++6 as 32-bit:
```
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386
```

You need to have libcxa.so.1 located in /usr/lib for the linuxjampded executable:
```
cp libcxa.so.1 /usr/lib
```

## Becoming an admin

First connect to your server, change your name from Padawan (if it's Padawan), and create an account with 
```
/regnick <password>
```
change the password and remove the < > from it.

Then login with 
```
/login <ID> <password>
```

Set your rconpassword to what your server's rconpassword is set to in server.cfg.
```
/rconpassword <rconpassword of server>
```

Then type 
```
/rcon makeadmin <ID> 1
```

Now, assuming you're not running OpenJK, which takes control over /help, you should be able to type /help and view all available commands to the administrator.

## Authors

* Milo Hehmsoth - Primary Commit

## Acknowledgments

* Ravensoft and LucasArts for creating the game
* Lugor for creating the original Lugormod
* RoboPhred for the continued work on Lugormod from Lugor
* Ufo for the continued work on Lugormod from RoboPhred

# Lugormod U# 2.4.8.4 Blank Server

This is a setup of Lugormod U# 2.4.8.4 +Wp +Fp for linux servers.

It also has an added /info command which is just a dummy command pointing to /help in order to fix OpenJK compatability.

## Documentation
Documentation files are located under the doc subfolder for markdown files. Links are below:

[Original Lugormod Document](doc/lugormod.md) (Original PDF in folder, too)

[Auto-Launch Information](doc/autolaunch.md)

[2012 U# Building Guide](doc/building.md)

Incomplete: [Cvar List](doc/cvars.md)

Incomplete: [Entities List](doc/entities.MD)

## Setup Guide
Be careful, these commands copy a server.cfg file. This assumes a lugormod folder exists for your server.

The quickest setup is the follow these commands:
```
git clone https://github.com/mheh/lugormod-community.git
cp -r lugormod-community/lugormod/* <destination of lugormod folder>
```

Please change jka_start.sh to your server destination, too as well as scripts in the autolaunch folder. Read [Auto-Launch Information](doc/autolaunch.md) for help.

## A New Server

The overall directory view of an OpenJK server should look like this:
```
/home/<username>/.local/share/openjk/base/
/home/<username>/.local/share/openjk/lugormod/
/home/<username>/.local/share/openjk/openjkded.i386
```

In order to host your own server you'll need asset files.
Within the base folder:
```
assets0.pk3  assets2.pk3  cgamei386.so  jampgamei386.so  uii386.so
assets1.pk3  assets3.pk3
```

For the server executable in Ubuntu, you must install libc6, libncurses5 and libstdc++6 as 32-bit:
```
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install libc6:i386 libncurses5:i386 libstdc++6:i386
```

For openjkded you need zlib1g-dev also installed in 32-bit:
```
sudo apt install zlib1g-dev:i386
```

Finally, copy libcxa.so.1 into /usr/lib:
```
cp libcxa.so.1 /usr/lib
```

Once these files have been placed correctly, you should be able to launch a dedicated local server on your linux machine.
```
./openjkded.i386 +set fs_game lugormod +exec server.cfg
```

This will launch the server in your terminal window, set the game to lugormod, and execute the server.cfg which loads the first map. By default it is available on the local network.

A linuxjampded version of the server is similar in layout, but everything resides in /home/<username>/.ja

## Firewall
Depending on your hosting and firewall scenario, this will vary. Please consult your hosting company's documentation and firewall documentation before asking support from individuals.

You need to open the default jedi academy port on your server if you're running a firewall, and potentially your host or router port as well for internet access.

If you're not running a firewall, or if this is for a home setup, you shouldn't need to open any ports for a local connection.

### For Ubuntu's UFW firewall
Check if UFW is active:
```
sudo ufw status
```

if disabled, run the following commands:
```
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow 29070
```

### WAIT
If you're hosting remotely or connected via ssh, make sure to allow SSH over port 22:
```
sudo ufw allow 22
```

### For Routers/Hosting
Open TCP/UDP port 29070 on your router's home page or host's website. Thie varies in appearance but often is labeled as Port forwarding.

## Authors

* Milo Hehmsoth - Primary Commit

## Acknowledgments

* Ravensoft and LucasArts for creating the game
* Lugor for creating the original Lugormod
* RoboPhred for the continued work on Lugormod from Lugor
* Ufo for the continued work on Lugormod from RoboPhred

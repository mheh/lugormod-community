# Auto Launch Scripting

There are two scenarios of auto-launch scripting available to the linux server.

## The game crashes/exits

The provided auto-launch scripts are sufficient for this scenario. 
Absolute destinations are used in the scripts, so please verify your home directory name is correct and/or the paths to the files are correct.

Required programs:
```
screen
watch
```

The slave jka_restarter.sh script does the following:
*Runs lists running screen commands and checks for "jka_server1"*
*If it isn't running, it launches the jka_start.sh script under the screen command and labels it "jka_server1"*

The master jka_autorestart.sh script does the following:
*Runs a screen command to watch the "jka_restarter.sh" script and make sure it's running*

To start this process, launch the jka_autorestart.sh script:
```
./jka_autorestart.sh
```

This will repeatedly watch the server and make sure it's running. If it's not running it will attempt to start it again.

## The server reboots

The second auto-launch script is one for automatic launching upon rebooting or powering on the server.
This script takes advantage of cron and the @reboot flag. **It only runs the command once.**

Prerequisites:
```
Ensure you're logged into the user that launches your server instance. (su <username>)
Ensure your previous auto-launch scripts have the absolute paths to required files in them.
```

If you do not satisfy these scenarios, cron may not work as expected. Aka it will run the command, or you may see an instance of one command, but the server will not actually launch.

Open crontab for the specific user:
```
crontab -e
```

At the bottom of the file, create a new line and change the following to your paths:
```
@reboot /home/<username>/.local/share/openjk/autolaunch/jka_autorestart.sh
```

Save and exit the file. If all your paths are correct, upon reboot the server should launch jka_autorestart.sh and in turn start the server.
You can add a sleep command as well; the line would change to:
```
@reboot sleep 20 && /home/<username>/.local/share/openjk/autolaunch/jka_autorestart.sh
```

These things should aid in restarting your server automatically.
#!/bin/sh
chown -R minecraft:minecraft /minecraft
su minecraft
# Create or truncate commands.txt
> commands.txt
tail -f commands.txt | java -Xmx1024M -Xms1024M -jar server.jar nogui

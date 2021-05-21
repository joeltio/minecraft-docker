#!/bin/sh
chown -R minecraft:minecraft /minecraft
su minecraft
java -Xmx1024M -Xms1024M -jar server.jar nogui

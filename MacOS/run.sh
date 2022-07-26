echo "Public: <true> or <false>"
read answer
public=$answer
echo "Version: <1.8 - 1.19>"
read answer
version=$answer
echo "MOTD: <motd>"
read answer
motd=$answer
echo "Admin: <username>"
read answer
admin=$answer
echo "Running Server. For more customization, use the 'config server' command."
# Check in "Downloads" and see if there is a server.jar file. If not, download it.
if [ ! -f "/Users/bradygustafson/Downloads/server.jar" ]; then
    echo "Please install server.jar from Minecraft.net"
    exit
fi
# Make a new directory for the server.
mkdir "EZServer $version"
# Make a copy of the server.jar file into the new directory.
cp "/Users/bradygustafson/Downloads/server.jar" "EZServer $version"
# Run server.jar in the new directory.
cd "EZServer $version"
java -Xmx1024M -Xms1024M -jar server.jar nogui
# Change the text of the eula.txt file to "true".
echo "eula=true" > eula.txt
echo "#Minecraft server properties
#Mon Jul 25 21:40:57 CDT 2022
enable-jmx-monitoring=false
rcon.port=25575
level-seed=
gamemode=survival
enable-command-block=false
enable-query=false
generator-settings={}
enforce-secure-profile=false
level-name=world
motd=$motd
query.port=25565
pvp=true
generate-structures=true
max-chained-neighbor-updates=1000000
difficulty=easy
network-compression-threshold=256
max-tick-time=60000
require-resource-pack=false
max-players=20
use-native-transport=true
online-mode=true
enable-status=true
allow-flight=false
broadcast-rcon-to-ops=true
view-distance=10
server-ip=localhost
resource-pack-prompt=
allow-nether=true
server-port=25565
enable-rcon=false
sync-chunk-writes=true
op-permission-level=4
prevent-proxy-connections=false
hide-online-players=false
resource-pack=
entity-broadcast-range-percentage=100
simulation-distance=10
rcon.password=
player-idle-timeout=0
force-gamemode=false
rate-limit=0
hardcore=false
white-list=false
broadcast-console-to-ops=true
spawn-npcs=true
previews-chat=false
spawn-animals=true
function-permission-level=2
level-type=minecraft\:normal
text-filtering-config=
spawn-monsters=true
enforce-whitelist=$public
spawn-protection=16
resource-pack-sha1=
max-world-size=29999984
" >> eula.txt
clear
echo "Server is now running. To stop the server, use the 'stop' command."
sleep 2
# Run the server.
java -Xmx1024M -Xms1024M -jar server.jar nogui
clear
echo "Server is now running."

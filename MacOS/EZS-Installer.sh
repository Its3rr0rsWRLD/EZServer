echo "Installing EZServer..."
# Create a file called "ezs.sh" in "/usr/local/bin"
echo "" > /usr/local/bin/ezs-run.sh
# Get the content of https://raw.githubusercontent.com/ThatError404/EZServer/main/MacOS/run.sh and put it in "ezs.sh"
curl -s https://raw.githubusercontent.com/ThatError404/EZServer/main/MacOS/run.sh >> /usr/local/bin/ezs-run.sh
# Make the file executable
chmod +x /usr/local/bin/ezs-run.sh
# Change the name of the file to "ezs-run"
mv /usr/local/bin/ezs-run.sh /usr/local/bin/ezs-run
echo "EZServer installed! Run it with 'ezs-run'!"
exit

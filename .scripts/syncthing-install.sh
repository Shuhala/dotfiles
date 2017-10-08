# Install
curl -s https://syncthing.net/release-key.txt | sudo apt-key add -
echo "deb http://apt.syncthing.net/ syncthing release" | sudo tee /etc/apt/sources.list.d/syncthing.list
sudo apt-get update
sudo apt-get install syncthing

# Setup
sudo useradd -r syncthing -m -d /home/syncthing
sudo systemctl enable syncthing@syncthing.service

# Start
sudo systemctl start syncthing@syncthing.service

# Status
systemctl status syncthing@syncthing.service

# Enable and start the service
# systemctl --user enable syncthing.service
# systemctl --user start syncthing.service

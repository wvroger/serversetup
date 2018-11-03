clear
echo moving services to startup 
sudo mv ombi.service /etc/systemd/system/
sudo mv sonarr.service /etc/systemd/system/
sudo mv radarr.service /etc systemd/system/
sudo mv nzhget.service /etc/systemd/system/
systemctl enable ombi
systemctl enable radarr
systemctl enable sonarr
systemctl enable nzbget
service ombi start
service radarr start
service sonarr start
service nzbget start


#sed -i 's/overlay2/devicemapper/g' /etc/sysconfig/docker-storage
sed -i 's/overlay2/devicemapper/g' /etc/sysconfig/docker-storage-setup
sudo systemctl start docker.service


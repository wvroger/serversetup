##Test Roger
setenforce 0
sed -i 's/enforcing/disabled/g' /etc/selinux/config /etc/selinux/config
rpm --import "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF"
su -c 'curl https://download.mono-project.com/repo/centos7-stable.repo | tee /etc/yum.repos.d/mono-centos7-stable.repo'
yum install epel-release deltarpm -y
yum install yum-utils net-tools wget git htop atop top screen rsync nfs-utils -y
yum install centos-release-gluster41 -y
yum remove firewalld -y
yum install mono-core mono-devel mono-locale-extras curl mediainfo -y
yum install -y glusterfs-server mono-devel
yum -y install https://www.rpmfind.net/linux/rpmfusion/nonfree/el/updates/7/x86_64/u/unrar-5.4.5-1.el7.x86_64.rpm   # Install unrar
yum install wget mediainfo libzen libmediainfo curl gettext mono-core mono-devel sqlite.x86_64 -y
yum -y install wget git par2cmdline p7zip unzip tar gcc python-feedparser python-configobj python-cheetah python-dbus python-devel libxslt-devel
#service glusterd start && chkconfig glusterd on

 
yum -y install ntp 
ntpdate pool.ntp.org 
service ntpd start 
chkconfig ntpd on
ln -s /usr/lib64/libMonoPosixHelper.so /usr/lib/libMonoPosixHelper.so
rpm -ivh http://download.neorouter.com/Downloads/NRMesh/Update_2.4.5.4510/Linux/CentOS/nrclient-2.4.5.4510-mesh-centos-x86_64.rpm



yum -y update && reboot

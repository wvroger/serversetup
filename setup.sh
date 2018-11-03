setenforce 0
sed -i 's/enforcing/disabled/g' /etc/selinux/config /etc/selinux/config
rpm --import "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF"
su -c 'curl https://download.mono-project.com/repo/centos7-stable.repo | tee /etc/yum.repos.d/mono-centos7-stable.repo'
rpm -ivh http://rpms.remirepo.net/enterprise/remi-release-7.rpm
yum install epel-release deltarpm -y
yum install yum-utils net-tools wget git htop atop top screen rsync nfs-utils -y
yum install centos-release-gluster41 -y
yum remove firewalld -y
yum install mono-core mono-devel mono-locale-extras curl mediainfo -y
yum install -y glusterfs-server mono-devel
yum -y install https://www.rpmfind.net/linux/rpmfusion/nonfree/el/updates/7/x86_64/u/unrar-5.4.5-1.el7.x86_64.rpm   # Install unrar
yum install -y wget mediainfo libzen libmediainfo curl gettext mono-core mono-devel sqlite.x86_64 
yum -y install wget git par2cmdline p7zip unzip tar gcc python-feedparser python-configobj python-cheetah python-dbus python-devel libxslt-devel
yum-config-manager --enable remi-php72-php
yum install -y php php-mcrypt php-cli php-gd php-curl php-mysql php-ldap php-zip php-fileinfo 
yum install -y httpd boost-regex boost-devel swig gcc-c++ nmap-ncat certbot subversion tmux mediainfo  
yum install -y memcached p7zip php72-php-mbstring php72-php-mcrypt php72-php-pecl-imagick php72-php-devel 
yum install -y php72-php-fpm-nginx.noarch php72-php-opcache.x86_64 php72-php-pear.noarch php72-php-pdo.x86_64 php72-php-gd.x86_64 
yum install -y php72-php-mysqlnd.x86_64 php72 php72-php-common php72-common zlib-devel bzip2-devel openssl-devel ncurses-devel 
yum install -y sqlite-devel readline-devel tk-devel nasm -y
#
#
#
#service glusterd start && chkconfig glusterd on
#
#
yum -y install ntp 
ntpdate pool.ntp.org 
service ntpd start 
chkconfig ntpd on
ln -s /usr/lib64/libMonoPosixHelper.so /usr/lib/libMonoPosixHelper.so
rpm -ivh http://download.neorouter.com/Downloads/NRMesh/Update_2.4.5.4510/Linux/CentOS/nrclient-2.4.5.4510-mesh-centos-x86_64.rpm
#
#
#a
yum -y update && reboot

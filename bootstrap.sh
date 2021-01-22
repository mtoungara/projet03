echo "debut provisioning"  
dnf -y update
dnf module install -y python36
dnf install -y epel-release
dnf info ansible --repo=epel
dnf install ansible --best -y 
dnf install python3-argcomplete --best -y
rpm --import https://packages.microsoft.com/keys/microsoft.asc
sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf check-update -y
dnf install code --best -y
dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo
dnf install docker-ce --best -y
systemctl start docker
systemctl enable docker
sudo usermod -aG docker vagrant
sudo curl https://raw.githubusercontent.com/mtoungara/projet03/master/Dockerfile -so  Dockerfile
docker build -t ubuntu-prj3:21.04 .
docker run -dit --name prj3 -p 80:8080 ubuntu-prj3:21.04



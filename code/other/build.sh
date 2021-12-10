timedatectl set-timezone Asia/Shanghai
yum -y install wget
yum install git
pip3 install --upgrade pip
pip3 install tmux -i http://pypi.douban.com/simple --trusted-host pypi.douban.com
pip3 install scrapy -i http://pypi.douban.com/simple --trusted-host pypi.douban.com
pip3 install scrapy-splash -i http://pypi.douban.com/simple --trusted-host pypi.douban.com
pip3 install flask -i http://pypi.douban.com/simple --trusted-host pypi.douban.com
pip3 install APScheduler -i http://pypi.douban.com/simple --trusted-host pypi.douban.com
pip3 install requests==2.20 -i http://pypi.douban.com/simple --trusted-host pypi.douban.com
pip3 install fake-useragent -i http://pypi.douban.com/simple --trusted-host pypi.douban.com
pip3 install schedule -i http://pypi.douban.com/simple --trusted-host pypi.douban.com

pip3 install pytesseract  -i http://pypi.douban.com/simple --trusted-host pypi.douban.com
pip3 install pillow  -i http://pypi.douban.com/simple --trusted-host pypi.douban.com

wget https://repo.anaconda.com/archive/Anaconda3-2021.05-Linux-x86_64.sh
bash Anaconda3-2021.05-Linux-x86_64.sh
firewall-cmd --zone=public --add-port=12347/tcp --permanent
firewall-cmd --zone=public --add-port=9527/tcp --permanent
ssh-keygen -t rsa
cat ~/.ssh/id_rsa.pub
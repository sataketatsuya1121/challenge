# パッケージインストール
sudo yum -y groupinstall "development tools"

# dockerインストール
sudo yum -y install -y yum-utils
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
sudo yum -y install docker-ce docker-ce-cli containerd.io

# docker-compose インストール
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

# ファイヤーウォール起動
sudo systemctl start firewalld.service
sudo firewall-cmd --add-service=http --zone=public --permanent
sudo firewall-cmd --reload
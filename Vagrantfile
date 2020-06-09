Vagrant.configure("2") do |config|
  # box指定
  config.vm.box = "centos/7"

  # ポートの指定 guestがVagrant上のOS hostがDockerコンテナのポート
  config.vm.network "forwarded_port", guest: 8282, host: 8282
  config.vm.network "forwarded_port", guest: 8383, host: 8383

  # ディレクトリの同期設定。
  config.vm.synced_folder "./", "/vagrant", type:"virtualbox"

  # provisionで vagrant upと同時に.sh内のコマンドが叩かれる
  config.vm.provision "shell", :path => "provision.sh"
end
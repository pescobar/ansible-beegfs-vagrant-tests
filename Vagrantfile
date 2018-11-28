Vagrant.configure("2") do |config|

  config.vm.define "mgmtd", primary: true do |mgmtd|
    mgmtd.vm.box = "bento/centos-7"
    mgmtd.vm.hostname = 'mgmtd'

    mgmtd.vm.network :private_network, ip: "192.168.56.101"

    mgmtd.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 2048]
      v.customize ["modifyvm", :id, "--name", "mgmtd"]
    end
    mgmtd.vm.provision "shell", path: "vm-setup.sh"
  end

  config.vm.define "oss01" do |oss01|
    oss01.vm.box = "bento/centos-7"
    oss01.vm.hostname = 'oss01'

    oss01.vm.network :private_network, ip: "192.168.56.102"

    oss01.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 2048]
      v.customize ["modifyvm", :id, "--name", "oss01"]
      v.customize ['createhd', '--filename', '/tmp/beegfsDiskA-centos.vdi', '--size', 10 * 1024]
      v.customize ['storageattach', :id,  '--storagectl', 'SATA Controller', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', '/tmp/beegfsDiskA-centos.vdi']
      v.customize ['createhd', '--filename', '/tmp/beegfsDiskB-centos.vdi', '--size', 10 * 1024]
      v.customize ['storageattach', :id,  '--storagectl', 'SATA Controller', '--port', 2, '--device', 0, '--type', 'hdd', '--medium', '/tmp/beegfsDiskB-centos.vdi']
    end
  end
  
  config.vm.define "oss02" do |oss02|
    oss02.vm.box = "bento/centos-7"
    oss02.vm.hostname = 'oss02'

    oss02.vm.network :private_network, ip: "192.168.56.103"

    oss02.vm.provider :virtualbox do |v2|
      v2.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v2.customize ["modifyvm", :id, "--memory", 2048]
      v2.customize ["modifyvm", :id, "--name", "oss02"]
      v2.customize ['createhd', '--filename', '/tmp/beegfsDiskC-centos.vdi', '--size', 10 * 1024]
      v2.customize ['storageattach', :id,  '--storagectl', 'SATA Controller', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', '/tmp/beegfsDiskC-centos.vdi']
      v2.customize ['createhd', '--filename', '/tmp/beegfsDiskD-centos.vdi', '--size', 10 * 1024]
      v2.customize ['storageattach', :id,  '--storagectl', 'SATA Controller', '--port', 2, '--device', 0, '--type', 'hdd', '--medium', '/tmp/beegfsDiskD-centos.vdi']
    end
  end

end

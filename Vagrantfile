Vagrant.configure("2") do |config|

  config.vm.define :ubuntu do |ubuntu|
    ubuntu.vm.box = "precise-server-cloudimg-amd64-vagrant-disk1"
    ubuntu.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-amd64-vagrant-disk1.box"
    ubuntu.vm.network :private_network, ip: "192.168.88.2"
    ubuntu.vm.network :forwarded_port, guest: 8140, host: 9140, auto_correct: true
    ubuntu.vm.network :forwarded_port, guest: 9292, host: 9292, auto_correct: true
    ubuntu.vm.network :forwarded_port, guest: 9300, host: 9302, auto_correct: true
    ubuntu.vm.network :forwarded_port, guest: 9200, host: 9201, auto_correct: true
    ubuntu.vm.network :forwarded_port, guest: 443, host: 24431, auto_correct: true
    ubuntu.vm.hostname = "vm.ubuntu.lab"
    #ubuntu.vm.provision :shell, :path => "ubuntu-bootstrap.sh"
  end
  #config.vm.provider "virtualbox" do |ubuntu|
  #  ubuntu.customize ["modifyvm", :id, "--memory", "4096"]
  #end
  
  config.vm.define :centos do |centos|
    centos.vm.box = "centos-65-x86_64-virtualbox-nocm-0.2.0"
    centos.vm.box_url = "https://s3.amazonaws.com/puppetlabs-vagrantcloud/centos-65-x86_64-virtualbox-nocm-0.2.0.box"
    #centos.vm.box = "CentOS-6.5-x86_64-v20140110"
    #centos.vm.box_url = "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.5-x86_64-v20140110.box"
    centos.vm.network :private_network, ip: "192.168.88.3"
    centos.vm.network :forwarded_port, guest: 8140, host: 9141, auto_correct: true
    centos.vm.network :forwarded_port, guest: 8080, host: 8888, auto_correct: true
    centos.vm.network :forwarded_port, guest: 9292, host: 9293, auto_correct: true
    centos.vm.network :forwarded_port, guest: 9300, host: 9303, auto_correct: true
    centos.vm.network :forwarded_port, guest: 9200, host: 9202, auto_correct: true
    centos.vm.network :forwarded_port, guest: 443, host: 24432, auto_correct: true
    centos.vm.network :forwarded_port, guest: 80, host: 24342, auto_correct: true
    centos.vm.hostname = "vm.centos.lab"
    centos.vm.provision :shell, :path => "centos-bootstrap.sh"
  end
  

  config.vm.define :sles do |sles|
    sles.vm.box = "sles-11sp1-x64-vbox4210-nocm"
    sles.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/sles-11sp1-x64-vbox4210-nocm.box"
    sles.vm.network :private_network, ip: "192.168.88.4"
    #sles.vm.network :forwarded_port, guest: 22, host: 20024
    sles.vm.hostname = "vm.sles.lab"
    sles.vm.provision :shell, :path => "sles-bootstrap.sh"
  end

  config.vm.define :oracle59 do |oracle59|
    oracle59.vm.box = "oracle59"
    oracle59.vm.box_url = "https://dl.dropbox.com/s/n5o3gfdgjc3ekhl/oracle59.box"
    oracle59.vm.network :private_network, ip: "192.168.88.5"
    oracle59.vm.network :forwarded_port, guest: 22, host: 20025
    oracle59.vm.hostname = "vm.oracle59.lab"
    #oracle59.vm.provision :shell, :path => "oracle59-bootstrap.sh"
  end

  config.vm.define :ubuntutrusty do |ubuntutrusty|
    ubuntutrusty.vm.box = "trusty-server-cloudimg-amd64-vagrant-disk1"
    ubuntutrusty.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"
    ubuntutrusty.vm.network :private_network, ip: "192.168.88.6"
    ubuntutrusty.vm.network :forwarded_port, guest: 8140, host: 9146
    ubuntutrusty.vm.network :forwarded_port, guest: 443, host: 24436
    #ubuntutrusty.vm.network :forwarded_port, guest: 22, host: 20026
    ubuntutrusty.vm.hostname = "vm.ubuntutrusty.lab"
    ubuntutrusty.vm.provision :shell, :path => "ubuntutrusty-bootstrap.sh"
  end
  #config.vm.provider "virtualbox" do |ubuntutrusty|
  #  ubuntutrusty.customize ["modifyvm", :id, "--memory", "4096"]
  #end

end


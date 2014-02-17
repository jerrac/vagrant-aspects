Vagrant.configure("2") do |config|

  config.vm.define :ubuntu do |ubuntu|
    ubuntu.vm.box = "precise-server-cloudimg-amd64-vagrant-disk1"
    ubuntu.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-amd64-vagrant-disk1.box"
    ubuntu.vm.network :private_network, ip: "192.168.88.2"
    #ubuntu.vm.network :forwarded_port, guest: 8140, host: 9140
    #ubuntu.vm.network :forwarded_port, guest: 443, host: 24431
    #ubuntu.vm.network :forwarded_port, guest: 22, host: 20022
    ubuntu.vm.hostname = "vm.ubuntu.lab"
    ubuntu.vm.provision :shell, :path => "ubuntu-bootstrap.sh"
  end
  #config.vm.provider "virtualbox" do |ubuntu|
  #  ubuntu.customize ["modifyvm", :id, "--memory", "4096"]
  #end
  
  config.vm.define :centos do |centos|
    centos.vm.box = "CentOS-6.5-x86_64-v20140110"
    centos.vm.box_url = "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.5-x86_64-v20140110.box"
    centos.vm.network :private_network, ip: "192.168.88.3"
    #centos.vm.network :forwarded_port, guest: 8140, host: 9140
    centos.vm.network :forwarded_port, guest: 80, host: 9083
    centos.vm.network :forwarded_port, guest: 22, host: 20023
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
    #oracle59.vm.network :forwarded_port, guest: 22, host: 20025
    oracle59.vm.hostname = "vm.oracle59.lab"
    oracle59.vm.provision :shell, :path => "oracle59-bootstrap.sh"
  end

end

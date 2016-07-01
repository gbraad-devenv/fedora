VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "fedora/24-cloud-base"

  config.vm.provider "virtualbox" do |vbox|
    vbox.name = "Development environment"
    vbox.customize ["modifyvm", :id, "--memory", "2048"]
  end
  
  #config.vm.provision "ansible" do |ansible|
  #  ansible.playbook = "playbook.yml"
  #end
  
  config.vm.provision "shell" do |shell|
    shell.path = "./install.sh"
  end

end

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "fedora/24-cloud-base"

  config.vm.provider "libvirt" do |libvirt, override|
    libvirt.cpus = 2
    libvirt.memory = 2048
    libvirt.driver = 'kvm'
    libvirt.nested = true
    libvirt.storage :file, :size => '20G'
  end
  
  #config.vm.provision "ansible" do |ansible|
  #  ansible.playbook = "playbook.yml"
  #end
  
  config.vm.provision "shell" do |shell|
    shell.path = "./install.sh"
  end

end

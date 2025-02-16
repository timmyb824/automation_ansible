# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "gyptazy/ubuntu22.04-arm64"

  # Enable SSH forward agent
  # config.ssh.forward_agent = true

  # Enable provisioning with Ansible. This will run the playbook in the
  # same directory as this Vagrantfile, with the name "playbook.yaml".
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "initial_setup.yaml"
    ansible.raw_arguments = [
      "-i", "inventory_root.yaml",
      "-e", "@roles/user_setup/vars/vault.yaml",
      "--ask-vault-pass",
    ]
  end

#   # Configure SSH to use tbryant user after provisioning
#   config.vm.provision "shell", inline: <<-SHELL
#     if id tbryant >/dev/null 2>&1; then
#       # Update Vagrant's SSH config to use tbryant user
#       echo "vagrant ALL=(tbryant) NOPASSWD: ALL" > /etc/sudoers.d/vagrant-tbryant
#       sed -i 's/vagrant/tbryant/g' /etc/ssh/sshd_config
#       systemctl restart sshd
#     fi
#   SHELL
end

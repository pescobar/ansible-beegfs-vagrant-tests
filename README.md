# Setup:
	
	git clone --recurse-submodules https://github.com/pescobar/ansible-beegfs-vagrant-tests

# Testing:

	vagrant up
	vagrant ssh-config >> ~/.ssh/config
	ansible-playbook -i inventory playbook.yml

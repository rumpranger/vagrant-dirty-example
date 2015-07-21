This is a repo for various workstation configuration files

#I'm not a fan of markdown.

1. using your favorite editor edit /path/to/Vagrantfile

2. replace the config.vm.synced_folder local path to the one for your project folder (~line 133)

3. save

4. load the box $vagrant box add precise64 http://files.vagrantup.com/precise64.box

5. add nfs to your local system if necessary (mac/linux)

6. start the virtualbox: $ vagrant up

7. load any changes you make to the bootstrap: $ vagrant reload --provision

8. enter the virtual box: $ vagrant ssh

9. view your local projects: ls /var/www/html
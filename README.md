This is a repo for various workstation configuration files

#I'm not a fan of markdown.

using your favorite editor edit /path/to/Vagrantfile

replace the config.vm.synced_folder local path to the one for your project folder (~line 133)

save

load the box 
```
$vagrant box add precise64 http://files.vagrantup.com/precise64.box
```

add nfs to your local system if necessary (mac/linux)

start the virtualbox: 

```
$ vagrant up
```

load any changes you make to the bootstrap: 
```
$ vagrant reload --provision
```

enter the virtual box:
```
$ vagrant ssh
```

view your local projects: 
```
ls /var/www/html
```

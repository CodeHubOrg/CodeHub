# CodeHub

[Concrete5](http://www.concrete5.org/) CodeHub site

## Contributing
Want to contribute to the site? great!

## Codehub Vagrant
We have created a vagrant to get you up and running. To use it do the following:-

- Clone this repo into a folder called 'codehub'
- In the same directory the 'codehub' folder resides clone this repo https://github.com/CodeHubOrg/codehub-vagrant
- Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads) and [Vagrant](http://www.vagrantup.com/downloads.html)
- *Linux Users:* Install an NFS daemon, e.g. `apt-get install nfs-kernel-server`
- CD into the codehub-vagrant folder
    - Initialise and fetch submodules `git submodule update --init`
    - Run `vagrant up`

## Installing the database for the CodeHub site 

When your Vagrant is up and running, ssh into it with `vagrant ssh`   
Change directory: `cd /var/www/` (this is synced with the folder that includes our codehub and codehub-vagrant folders)   

Then type in the following: 
```bash
mysql -u root -ppassword
mysql>   USE codehub_dev
mysql>   source codehub/docs/codehub.sql
```
## Running the site locally
The last step you need to do is to update the hosts file on your host system. After exiting mysql with `\q` you can look up the Vagrant's IP address with `ifconfig` or `ip addr`. Then add IP address and URL to the hosts file like this:
```
127.28.128.3      dev.codehub.org.uk
```
You should be able to see the site at that URL now! 


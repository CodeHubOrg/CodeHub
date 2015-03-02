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

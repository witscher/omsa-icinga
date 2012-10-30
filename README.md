omsa-icinga
===========

Scripts to monitor Dell Omsa with Icinga/Nagios and the nagios-nrpe Daemon

tested on Ubuntu 12.04 with OMSA 7.1, currently RAID Health Check only

# prerequisites

Follow the instructions here: http://linux.dell.com/repo/community/deb/

then, instal the storage package:

     apt-get install srvadmin-storageservices

The Dell OMSA binaries are not included in PATH, they can be found in /opt/dell/

# installation

clone this repo to /opt

     cd /opt
     git clone git://github.com/witscher/omsa-icinga.git


add this line to your nrpe.cfg

    include=/opt/omsa-icinga/conf/raid.cfg

restart nrpe daemon.


# Available Commands

* check_raid [ -c <controller> -v <virtual disk>] # both controller and virtual disk default to 0


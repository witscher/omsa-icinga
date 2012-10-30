#!/bin/bash

# TODO must run with root privileges

DIRECTORY=/etc/nagios/nrpe.d

if ![ -d /etc/nagios/nrpe.d ] 
  echo "Directory /etc/nagios/nrpe.d/ not found"
  echo "please enter a NRPE include directory:"
  read DIRECTORY
fi


# TODO if [ -L $DIRECTORY/$DIRECTORY/omsa-icinga-raid.cfg ] 
ln -s /opt/omsa-icinga/conf/raid.cfg $DIRECTORY/omsa-icinga-raid.cfg


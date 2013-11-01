#!/bin/bash

# autodiscover any channels
pear config-set auto_discover 1

# update channels and upgrade any packages
pear update-channels
pear upgrade-all

# install PHP QA tools - http://phpqatools.org/
# PHPUnit, PHPLoc, PHP CodeSniffer, PHP Depend, PHP Mess Detector, PHP Copy / Paste Detector
pear install pear.phpqatools.org/phpqatools

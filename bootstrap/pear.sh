#!/bin/bash

# autodiscover any channels
pear config-set auto_discover 1

# update channels and upgrade any packages
pear update-channels
pear upgrade-all
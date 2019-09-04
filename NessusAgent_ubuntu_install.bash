#!/bin/bash
set -e
#The following command will set the path variable to the current directory
path="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
#The following command will run the installation file from the current directory. You will need to add the agent version number
sudo dpkg -i "${path}"/NessusAgent-<version number>-ubuntu1110_amd64.deb
#The following command will start the Nessus Agent
sudo /etc/init.d/nessusagent start
#In the following command you will need to change the Linking Key, Agent Group, Server and Port Number
sudo /opt/nessus_agent/sbin/nessuscli agent link --key=Linking Key --groups="Agent Group" --host=Server --port=Port Number


:: The following command will look for the installation file in the same folder that the bat file is in
cd %~dp0
:: In the following command you will need to add the Agent version number of the installation file, Nessus Group, Nessus Server and Linking Key
msiexec /i NessusAgent-<version number>-x64.msi NESSUS_GROUPS="Agent Group Name" NESSUS_SERVER="Server:Port" NESSUS_KEY=Linking Key /qn 

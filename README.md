# infra-testing
=============

Shell chores 
 


### Copy file from one host to another via localhost
1. Install vagrant.
```bash
brew install vagrant
```
2. Install ansible
```bash
brew install ansible
```
3. Add short names to your local config
```bash
sudo echo "192.168.70.101 c7001.dev.com c7001" >> /etc/hosts
sudo echo "192.168.70.102 c7002.dev.com c7002" >> /etc/hosts
```
4. Setup machines
```bash
Vagrant up
```
5. Fetch your private key to provide to ansible for ssh
```bash
vagrant ssh-config | grep IdentityFile
```
6. Create new file in C7001
```bash
vagrant ssh c7001
echo " Let see how it works" >> hello.txt
```
7. Perform ansible script
```bash
cd ansible
ansible-playbook -i hosts helloworld.yml -u vagrant --private-key=<key path from above>
```
8. Validate the answer
```bash
vagrant ssh c7002
cat hello.txt
```




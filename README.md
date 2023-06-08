How to run and compile c++
```
vim test.cpp
:set nu
ctr+o // creating command
ctr + o
:wq
g++ -o testobj test.cpp
./testobj
```
location search apps
```
dpkg -L appsname
```
virtual service
```
service apache2 start
systemctl enable apache2
ifconfig
```
SSH
```
sudo service ssh start
netstat -antp | grep ssh
systemctl enable ssh
```
porgresql
```
sudo service postgresql start
or
systemctl enable postgresql
```
some core util
```
grep = search for pattern on files 
sed = edit input stream
awk = general purpose test processing language
uniq = remove duplicate lines
```
TMUX
```
  s -> list session
	$ -> rename current session
	d -> detech from current session
	c -> new windows
	w -> list windows
	% -> split horizentally
	" -> split vertically
	q -> show the panel number
	} -> swap next panel
	{ -> swap preview panel
```
COMMAND LINE [only read n number]
```
cat access.log | tail -n 5
```

Docker setup and install 
```
sudo apt install docker.io
or
sudo apt snap install docker
sudo systemctl enable --now docker
check : sudo docker run hello-world
system check: sudo docker search term-goes-here
sudo docker pull alpine
```
linux speed command
```
apt-get install bleachbit
bleachbit
```
apt, bash, firefox[cache, cookie], system[broken Desktop file]

go install
```
cd ~
curl -O https://dl.google.com/go/go1.15.1.linux-amd64.tar.gz
tar xvf go1.*.linux-amd64.tar.gz
sudo mv go /usr/local
sudo nano ~/.profile
export GOPATH=$HOME/work
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
source ~/.profile
go version
```

vmware workstation ubuntu full screen problem
```
sudo apt-get install open-vm-tools-desktop
sudo nano /etc/systemd/system/multi-user.target.wants/open-vm-tools.service
```

Add following lines to the end of the [Unit] section
```
1. Requires=graphical.target
2. After=graphical.target

sudo systemctl daemon-reload
sudo service open-vm-tools restart
```

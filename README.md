
linux xoss utilies : 
```
ncdu, ranger, bpytop, ascii-image-converter[ascii-image-converter main.png --color], speedtest, lolcat
lazygit
lazyvim
ripgrep - shortcut -> rg
bad - arrange line code,
fzf - searching file or somethingelse
entr - texteditor
mc - texteditor
fish - shell
fd installation : cargo install fd-find
free and vmstat - memory and pc performence checkup

```

terminal emulator options
```
sudo update-alternatives --config x-terminal-emulator
```


github : again push method
```
[keep in mind you must stay on the main branch]
1. git add .
2. git commit -m "project done"
3. git push
```
lock problem:
```
sudo killall apt apt-get

sudo rm /var/lib/apt/lists/lock
sudo rm /var/cache/apt/archives/lock
sudo rm /var/lib/dpkg/lock*
sudo dpkg --configure -a
sudo apt update
or

https://www.edureka.co/community/42504/error-dpkg-frontend-is-locked-by-another-process
```

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
curl -O https://dl.google.com/go/go1.23.4.linux-amd64.tar.gz
tar xvf go1.*.linux-amd64.tar.gz
sudo mv go /usr/local
sudo nano ~/.profile
export GOPATH=$HOME/work
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
source ~/.profile
go version
```

java configaration:
```
sudo apt install openjdk-11-jdk
don't know: sudo update-alternatives --config java
sudo sed -i -e '/^assistive_technologies=/s/^/#/' /etc/java-*openjdk/accessibility.properties
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

# Linux Performance Monitoring Guide

A collection of command-line tools to monitor and troubleshoot system performance in Linux.

---

## Table of Contents
- [Introduction](#introduction)
- [CPU Monitoring](#cpu-monitoring)
- [Memory Monitoring](#memory-monitoring)
- [Disk I/O Monitoring](#disk-io-monitoring)
- [Network Monitoring](#network-monitoring)
- [Processes and System Logs](#processes-and-system-logs)
- [Hardware Monitoring](#hardware-monitoring)
- [Comprehensive Monitoring Tools](#comprehensive-monitoring-tools)
- [Installation Instructions](#installation-instructions)

---

## Introduction
This guide provides a list of essential tools for monitoring system performance on Linux. Each tool has been categorized for specific purposes like CPU, memory, disk, network, and hardware monitoring.

---

## CPU Monitoring
- **`top`**: Displays real-time CPU usage and process details.
- **`htop`**: Enhanced, interactive version of `top`.
- **`mpstat`**: Provides CPU usage statistics.

---

## Memory Monitoring
- **`free`**: Shows memory usage statistics.
- **`vmstat`**: Provides details on memory, CPU, and system performance.

---

## Disk I/O Monitoring
- **`iotop`**: Monitors real-time disk I/O usage by processes.
- **`iostat`**: Offers detailed CPU and disk statistics.
- **`df`**: Reports disk space usage for filesystems.
- **`du`**: Displays the size of directories and files.

---

## Network Monitoring
- **`iftop`**: Monitors real-time network bandwidth usage.
- **`nload`**: Visualizes network traffic.
- **`ss`**: Displays open ports and network statistics.

---

## Processes and System Logs
- **`ps`**: Shows running processes.
- **`journalctl`**: Manages and views system logs.
- **`lsof`**: Lists open files and their associated processes.

---

## Hardware Monitoring
- **`sensors`**: Displays hardware temperature and fan speeds.
- **`uptime`**: Shows system uptime and load averages.

---

## Comprehensive Monitoring Tools
- **`nmon`**: A complete system performance monitoring tool.
- **`glances`**: A versatile monitoring tool with web interface support.

---

## Installation Instructions
Most tools can be installed using the package manager available in your Linux distribution. Below are commands specific to Arch Linux:

```bash
# General monitoring tools
sudo pacman -S htop iotop iftop nload sysstat glances nmon lm_sensors


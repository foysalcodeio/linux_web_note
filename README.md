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

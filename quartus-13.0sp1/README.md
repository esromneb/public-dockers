# Background
Old Quartus for Cyclone II

# Debug
If the docker build gets stuck here (in accepting the license):
```
#20 Press [Enter] to continue :
```

Edit qinstall.sh and add more lines of:
```
expect "to continue"
send -- "\n"
```

# Build with
```bash
make
```

# Use
* To get JTAG access working, you need to map /dev into the docker. If you want to map a "work" or similar project type folder in, use another -v arg.
* Once you start the docker, start ssh, then run `ip a` to see the ip address

```bash
docker run --name q13 --hostname q13 --privileged -dit -v /dev:/dev localhost/quartus-13.0sp1:v1
docker exec -it q13 bash
/etc/init.d/ssh start
ip a
# use nano or vi to
# add your pubkey to ~/.ssh/authorized_keys
# take the contents of ~/.ssh/id_ed25519.pub from your host and paste it into here
nano ~/.ssh/authorized_keys
```

* in a new terminal, connect with ssh forwarding so X11 will work:
```bash
ssh -X root@172.17.0.xxx
```

* launch quartus with:
```
~/altera/13.0sp1/quartus/bin/quartus --64bit
```

* when asked about a license, choose `Add an IP license file`
* then click `Web License Update`
* I think this works?

# Build with
```bash
docker build -t base-band/quartus-ci-build:base .
```

# Use
```bash
docker run --name q22 --hostname q22 --privileged -dit -v /dev:/dev -v /home/x/work:/root/work localhost/quartus-20.1:v1
docker exec -it q22 bash
/etc/init.d/ssh start
ip a
# add your pubkey to /root/.ssh/authorized_keys
```

# Connect
```bash
ssh -X root@<IP>
~/intelFPGA_lite/22.1std/quartus/bin/quartus &
```

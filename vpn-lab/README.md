# VPN Network Lab

Lab topology:
![VPN lab topology logo](vpn-lab.png "VPN lab topology")

Before running make sure you installed containerlab, docker, Cisco IOS image and goBGP

Generate ssh keys and create Linux bridge:
```
./run_ssh_keygen.sh
sudo ./create_bridge.sh
```

Afterwards, start a containerlab lab:
```
sudo clab deploy --topo vpn_lab.yml
```

Wait until all containers will be in 'healthy' state (you can check it via '`docker ps -a`' command). Afterwards, you are ready to configure routers, just run:
```
./configure_routers.sh
```

Now we want can also start goBGP instance:
```
sudo -E gobgpd -f gobgp_conf.toml 
```


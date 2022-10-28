# eBGP Network Lab


Lab topology:
![eBGP lab topology logo](ebgp-lab.png "eBGP lab topology")

Before running make sure you installed [Containerlab](https://containerlab.dev), docker, Cisco IOS image and [GoBGP](https://github.com/osrg/gobgp)

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

Now we can also start GoBGP instance:
```
sudo -E gobgpd -f gobgp_conf.toml 
```

By default GoBGP is connected to all routers in AS 65001 (router-1 and router-2 are PEs, router-3 is Route Reflector). To router-1/2 as peer, to router-3 as RR client

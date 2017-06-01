Required config for telegraf to collect stats of host

```
  env:
    HOST_PROC: /rootfs/proc
    HOST_SYS: /rootfs/sys
    HOST_ETC: /rootfs/etc
  volumes:
   - /var/run/docker.sock:/var/run/docker.sock:ro
   - /sys:/rootfs/sys:ro
   - /proc:/rootfs/proc:ro
   - /etc:/rootfs/etc:ro
```

Environment variables:

```
VAR_TELEGRAF_HOSTNAME
VAR_INFLUXDB_HOSTNAME
VAR_INFLUXDB_DATABASE
VAR_INFLUXDB_USER
VAR_INLFUXDB_PASSWORD
VAR_TELEGRAF_MEMCACHED: '["host:port","host2:port2"]'
VAR_TELEGRAF_ELASTICSEARCH: port
VAR_TELEGRAF_MYSQL: {"username": "readonly","password":"supersecretkgb"}
VAR_TELEGRAF_REDIS: true 
VAR_TELEGRAF_RABBIT: {"username": "readonly","password":"supersecretkgb"}
```

# heap-telegraph Docker Image

Telegraf image for Heap-based hosting environments.

## Configuration

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

## Environment variables

Required:

```
VAR_TELEGRAF_HOSTNAME
VAR_INFLUXDB_HOSTNAME
VAR_INFLUXDB_DATABASE
VAR_INFLUXDB_USER
VAR_INLFUXDB_PASSWORD
```

Optional:

```
VAR_TELEGRAF_MEMCACHED: '[port, port]'
VAR_TELEGRAF_ELASTICSEARCH: port
VAR_TELEGRAF_MYSQL: {"username": "readonly","password":"supersecretkgb"}
VAR_TELEGRAF_MYSQL_USER_STATS: true # if not set to false will default to false
VAR_TELEGRAF_MYSQL_INNODB_METRICS: true # if not set to false will default to false
VAR_TELEGRAF_REDIS: port 
VAR_TELEGRAF_RABBIT: {"username": "readonly","password":"supersecretkgb"}
```

## License

All work found under this repository is licensed under the [Apache
License 2.0](LICENSE).


#!/bin/bash

#wait for mysql to be up and responsive
while ! mysqladmin -u pinger2 ping; do
	sleep 1
done

cd /home/freehub
/usr/local/bin/passenger start -d --log-file /var/log/freehub_server.log


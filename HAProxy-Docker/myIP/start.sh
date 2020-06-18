#!/bin/bash

docker	run	-itd \
		--network host \
		--name=test \
		--restart=unless-stopped \
		-v "$(pwd)"/haproxy.cfg:/usr/local/etc/haproxy/haproxy.cfg \
		-v "$(pwd)"/mycert.pem:/usr/local/etc/haproxy/mycert.pem \
		-v "$(pwd)/../errors/:/usr/local/etc/haproxy/errors/" \
		-v "$(pwd)"/dhparam:/usr/local/etc/haproxy/dhparam \
		haproxy:latest

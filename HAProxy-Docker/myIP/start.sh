#!/bin/bash

docker	run	-itd \
		--network host \
		--name=test \
		--restart=unless-stopped \
		-v "$(pwd)"/haproxy.cfg:/usr/local/etc/haproxy/haproxy.cfg \
		-v "$(pwd)"/star.gametower.com.tw.pem:/usr/local/etc/haproxy/star.gametower.com.tw.pem \
		-v "$(pwd)/../errors/:/usr/local/etc/haproxy/errors/" \
		haproxy:latest

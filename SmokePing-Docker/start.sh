#!/bin/bash
docker run -d \
	--name=smokeping \
	-e PUID=1000 \
	-e PGID=1000 \
	-e TZ=Asia/Taipei \
	-p 80:80 \
	-v /home/smokeping/config:/config \
	-v /home/smokeping/data:/data \
	--restart unless-stopped \
	linuxserver/smokeping

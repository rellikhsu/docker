#!/bin/bash
docker stop smokeping && docker rm -f smokeping && ${PWD}/start.sh

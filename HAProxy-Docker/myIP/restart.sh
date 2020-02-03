#!/bin/bash
NAME="test"
sudo docker stop ${NAME} && sudo docker rm -f ${NAME} && sudo ./start.sh

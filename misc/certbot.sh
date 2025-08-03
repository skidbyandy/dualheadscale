#!/bin/bash
sudo certbot certonly --standalone -d xiaofx.duckdns.org
sudo certbot renew --deploy-hook "sudo docker restart $(sudo docker ps -q)"

#!/bin/bash
echo 'updating system'
yum update -y
echo 'setting up the repository for nodejs'
curl -fsSL https://rpm.nodesource.com/setup_16.x | sudo bash -
echo 'installing nodejs'
yum install -y nodejs
echo 'installing nodered'
npm install -g --unsafe-perm node-red
echo 'install pm2 process manager'
npm install -g pm2

#!/bin/bash

### step-1
sudo apt update -y;

##step-2
sudo su 
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - &&\
apt-get install -y nodejs
exit

sudo corepack enable
sudo yarn create vite
# forntend name as a fornten server
yarn # for install devpencendy
yarn run build #build the project 
yarn preview # run project with default address
sudo yarn preview --host  --port 80 # run project on fixed port and expose the port
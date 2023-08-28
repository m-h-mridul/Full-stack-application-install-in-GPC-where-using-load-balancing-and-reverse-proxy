#!/bin/bash

#step-1
sudo apt update -y;
sudo su; 
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - &&\
apt-get install -y nodejs;
exit;



#step-2
mkdir mridul-1;
cd mridul-1/;
sudo corepack enable;


#step-3
yarn add express;
vim index.js; 
// app.js
const express = require('express');
const app = express();
const port = 80;

// Basic route
app.get('/', (req, res) => {
  res.send('Hello, first backed from mridul!');
});

// Start the server
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});


sudo node index.js; 
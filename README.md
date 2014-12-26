pandajs-coffeescript
====================

Get your panda some caffeine! Assuming you have installed coffescript like this:

    npm install -g coffee-script
  
Clone this repo to your machine and then, from the command line, cd to the root directory and run:

    coffee -w --output src/game --compile src/coffee
  
This will continuously rebuild your game files into the game folder as you work on them. 

I like to couple this with [BrowserSync](http://invrse.co/development-with-browsersync/) for live development.

This also works fine with [Panda Tool](https://github.com/ekelokorpi/panda.js-tool) so you can build your game, compress images and update your PandaJS version.

Have fun and make awesome games!


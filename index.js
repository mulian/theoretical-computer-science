#!/usr/bin/env node
// **index.js**
require('coffee-script');
require('coffee-script/register');

var args = process.argv.slice(2);
// module.exports = require('src/main');
switch (args[0]) {
  case "shuffle":
    console.log(require('./shuffle')(args[1],args[2]));
    break;
  case "mu":
    require('./mu-rekursion')
  default:

}

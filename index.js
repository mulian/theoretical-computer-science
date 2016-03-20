#!/usr/bin/env node
// **index.js**
require('coffee-script');
require('coffee-script/register');

var args = process.argv.slice(2);
// module.exports = require('src/main');
switch (args[0]) {
  case "shuffle":
    //node . shuffle ab cd
    console.log(require('./shuffle')(args[1],args[2]));
    break;
  case "mu":
    require('./mu-rekursion');
  case "resleft":
    //node . resleft ab ab,abc,bc,cc
    console.log(require('./residuierung').left(args[1],args[2]));
  case "resright":
    //node . resright c ab,abc,bc,cc
    console.log(require('./residuierung').right(args[1],args[2]));
  case "sit":
    console.log(require('./sit').optimal_algorithmus(args[1],args[2].split(',')));
  default:

}

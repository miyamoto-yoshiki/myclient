// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

import $ from '../env/node_modules/jquery';

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

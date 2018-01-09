'use strict'
module.exports = {
  NODE_ENV: '"production"',
  BUILD_MODE: process.argv[process.argv.length - 1] === 'release'
  	? '"release"'
  	: process.argv[process.argv.length - 1] === 'preview'
  		? '"preview"'
  		: '"beta"'
}

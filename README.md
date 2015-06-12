Looking il Hubot Scripts
==============================

[Hubot](http://hubot.github.com/) script to interface with the funny post from kim jong-il looking at things blog

## Installation

Update Hubot's package.json to install hubot-looking-il from npm, and update Hubot's external-scripts.json file to include the hubot-looking-il module.

### Update the files to include the hubot-looking-il module:

#### package.json
    ...
    "dependencies": {
      "hubot":        ">= 2.4.0 < 3.0.0",
      ...
      "hubot-looking-il": ">= 0.0.1"
    },
    ...

#### external-scripts.json
    ["hubot-awesome-module","other-cool-npm-script","hubot-looking-il"]

Run `npm install` to install hubot-looking-il and dependencies.

## Practical Use

Use `hubot help` or check the looking-il.coffee file to get the full list of options with short descriptions. 

   dogs

## TODO

* Retry on error
* Report when service is down

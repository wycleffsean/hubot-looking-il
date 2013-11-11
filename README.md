Computer dogs Hubot Scripts
==============================

[Hubot](http://hubot.github.com/) script to interface with the funny post from computer dogs blog

## Installation

Update Hubot's package.json to install hubot-computerdogs from npm, and update Hubot's external-scripts.json file to include the hubot-computerdogs module.

### Update the files to include the hubot-computerdogs module:

#### package.json
    ...
    "dependencies": {
      "hubot":        ">= 2.4.0 < 3.0.0",
      ...
      "hubot-computerdogs": ">= 0.0.1"
    },
    ...

#### external-scripts.json
    ["hubot-awesome-module","other-cool-npm-script","hubot-computerdogs"]

Run `npm install` to install hubot-computerdogs and dependencies.

## Practical Use

Use `hubot help` or check the computerdogs.coffee file to get the full list of options with short descriptions. 

   dogs

## TODO

* Retry on error
* Report when service is down

Extractor = require "../index.js"
fs = require("fs-extra")

config = fs.readJsonSync "./testconfig/config.json"



extractor = new Extractor(config)

console.log config

scb = (data)->
  console.log "success!"
  fs.writeJsonSync "./testoutput/raw_data.json", data, { spaces: 2 }

ecb = (e)->
  console.log "error!"
  console.log e
fcb = ()->
  console.log "FINALLY..."

extractor.execute  scb, ecb, fcb

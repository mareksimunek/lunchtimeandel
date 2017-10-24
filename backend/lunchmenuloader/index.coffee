
models = require '../models'


module.exports = () ->
    console.log 'Reloading data...'
    models.Restaurant.collection.drop (err) ->
        (new (require './saloon')).loadData()
        (new (require './parkan')).loadData()
        (new (require './salzmani')).loadData()
        (new (require './comix')).loadData()
        (new (require './beerFactory')).loadData()

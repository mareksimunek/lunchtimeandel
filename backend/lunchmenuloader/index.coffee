
models = require '../models'


module.exports = () ->
    console.log 'Reloading data...'
    models.Restaurant.collection.drop (err) ->
        console.log err
        (new (require './saloon')).loadData()
        (new (require './parkan')).loadData()
        (new (require './salzmani')).loadData()
        (new (require './comix')).loadData()
        (new (require './beerFactory')).loadData()
        (new (require './buffaloBurger')).loadData()
        (new (require './sachmat')).loadData()
        (new (require './pijezpi')).loadData()
        (new (require './podstriskou')).loadData()
        (new (require './lokal')).loadData()
        (new (require './satyr')).loadData()

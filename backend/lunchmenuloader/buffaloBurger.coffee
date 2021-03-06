LunchmenuLoader = require './lunchmenuLoader'
moment = require 'moment'

class BuffaloBurger extends LunchmenuLoader
    constructor: () ->
        @name = 'Buffalo Burger Bar'
        @homepage = 'https://www.buffaloburger.cz/#tydenni'
        @downloadUrl = 'https://www.menicka.cz/4280-buffalo-burger-bar.html'
        @phoneNumber = ''
        @charset = 'CP1250'
        @address =
            street: 'Nám. 14. října 10'
            city: 'Praha 5'
            zip: 15000
            map:
                lat: 49.7487236
                lng: 13.38085860000001

    parse: (restaurant, $) ->
        @parseMenicka restaurant, $




module.exports = BuffaloBurger

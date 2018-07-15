LunchmenuLoader = require './lunchmenuLoader'
moment = require 'moment'

class MalickaBrana extends LunchmenuLoader
    constructor: () ->
        @name = 'U Malické Brány'
        @homepage = 'http://www.umalickebrany.cz/tydenni-nabidka/'
        @downloadUrl = 'https://www.menicka.cz/1631-u-malicke-brany.html'
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




module.exports = MalickaBrana

LunchmenuLoader = require './lunchmenuLoader'
moment = require 'moment'

class ZaOponou extends LunchmenuLoader
    constructor: () ->
        @name = 'Za Oponou'
        @homepage = 'http://restauracezaoponou.cz/'
        @downloadUrl = 'https://www.menicka.cz/1606-restaurace-za-oponou.html'
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




module.exports = ZaOponou

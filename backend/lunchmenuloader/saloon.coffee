
LunchmenuLoader = require './lunchmenuLoader'


class SaloonlLoader extends LunchmenuLoader
    constructor: () ->
        @name = 'Saloon Rounda'
        @homepage = 'http://saloonroudna.cz/'
        @downloadUrl = 'http://saloonroudna.cz/'
        @phoneNumber = ''
        @address =
            street: ''
            city: 'Praha 5'
            zip: 15000
            map:
                lat: 49.7487236
                lng: 13.38085860000001

    parse: (restaurant, $) ->
        console.log('ahoj2')
        $('.cs-menuFood-content p').each (i, elem) ->
            row = $(this).text().trim().match /^(.+?)(\d+)/
            if row and row.length == 3
                restaurant.addMeal row[1], row[2]

module.exports = SaloonlLoader

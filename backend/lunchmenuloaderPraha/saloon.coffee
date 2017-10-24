
LunchmenuLoader = require './lunchmenuLoader'


class AndelLoader extends LunchmenuLoader
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
                lat: 50.070985
                lng: 14.404854

    parse: (restaurant, $) ->
        console.log('ahoj2')
        $('cs-menuFood-content').each (i, elem) ->
            name = $(this).find('p').text()
            console.log name
            price = 0
            restaurant.addMeal name, price

module.exports = AndelLoader

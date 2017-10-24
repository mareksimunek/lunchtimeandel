
LunchmenuLoader = require './lunchmenuLoader'


class BeerFactory extends LunchmenuLoader
    constructor: () ->
        @name = 'Beer Factory'
        @homepage = 'http://beerfactoryplzen.cz/#menu'
        @downloadUrl = 'http://beerfactoryplzen.cz/#menu'
        @phoneNumber = ''
        @address =
            street: 'Nám. 14. října 10'
            city: 'Praha 5'
            zip: 15000
            map:
                lat: 49.7487236
                lng: 13.38085860000001

    parse: (restaurant, $) ->
        n = (new Date()).getDay() - 1
        dayList = $('.gk-menu .gk-cols div').get(n)
        $(dayList).find('dd').each (i, elem) ->
            name = $(this).find('small').text().trim()
            price = $(this).find('strong').text().trim()
            restaurant.addMeal name, price
        


module.exports = BeerFactory

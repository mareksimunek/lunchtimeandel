
LunchmenuLoader = require './lunchmenuLoader'


class Parkan extends LunchmenuLoader
    constructor: () ->
        @name = 'Na Parkánu'
        @homepage = 'http://lokalblok.cz/restaurace/'
        @downloadUrl = 'http://www.naparkanu.com/cz/denni-nabidka/'
        @phoneNumber = '+420 251 511 490'
        @address =
            street: 'Nám. 14. října 10'
            city: 'Praha 5'
            zip: 15000
            map:
                lat: 49.7487236
                lng: 13.38085860000001

    parse: (restaurant, $) ->
        $('.active table.simple tr').each (i, elem) ->
            name = $(this).find('td').eq(1).text().trim()
            price = $(this).find('td').last().text().trim()
            restaurant.addMeal name, price

        name = $('h3').next('table').find('td').first().text().trim()
        price = $('h3').next('table').find('td').last().text().trim()
        console.log name
        console.log price
        restaurant.addMeal name, price


module.exports = Parkan

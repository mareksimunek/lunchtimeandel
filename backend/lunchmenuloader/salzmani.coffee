
LunchmenuLoader = require './lunchmenuLoader'


class Salzmani extends LunchmenuLoader
    constructor: () ->
        @name = 'U Salzmannů'
        @homepage = ''
        @downloadUrl = 'http://www.usalzmannu.com/cz/denni-nabidka/'
        @phoneNumber = '+420 251 511 490'
        @address =
            street: 'Nám. 14. října 10'
            city: 'Praha 5'
            zip: 15000
            map:
                lat: 49.7478084
                lng: 13.379418399999963

    parse: (restaurant, $) ->
         $('.active table.simple tr').each (i, elem) ->
            name = $(this).find('td').eq(1).text().trim()
            price = $(this).find('td').last().text().trim()
            restaurant.addMeal name, price


module.exports = Salzmani

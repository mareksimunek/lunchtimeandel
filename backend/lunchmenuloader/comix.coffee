
LunchmenuLoader = require './lunchmenuLoader'


class Comix extends LunchmenuLoader
    constructor: () ->
        @name = 'Comix Excelent Urban Pub'
        @homepage = 'http://www.comixpub.cz/denni-menu/'
        @downloadUrl = 'https://www.zomato.com/cs/widgets/daily_menu?entity_id=16513887'
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
        console.log("Comix")
        console.log restaurant
        @lunchmenuParse_ restaurant, $


module.exports = Comix

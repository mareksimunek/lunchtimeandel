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
        today = moment().format('dddd D.M.YYYY')
        mealNames = []
        mealPrice = []
        $('.menicka').each (i, elem) ->
            day = $(this).find('.datum').text().trim()
            if day.toLowerCase() is today

                $(this).find('.nabidka_1').each (j, el)->
                    mealNames.push $(this).text().trim();
                 $(this).find('.cena').each (j, el)->
                    mealPrice.push $(this).text().trim();
                # console.log mealNames
                # console.log mealPrice
                for mealName, i in mealNames
                     restaurant.addMeal mealName, mealPrice[i]
            else
                console.log today
                console.log 'not today'
                console.log day




module.exports = BuffaloBurger

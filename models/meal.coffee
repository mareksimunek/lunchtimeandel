
module.exports = (Schema) ->
    Meal = new Schema
        name: String
        price: Number

    Meal.path('name').set (v) ->
        return v.replace('&nbsp;', ' ')

    Meal.path('price').set (v) ->
        return parseInt v

    Meal.methods.getPrintablePrice = () ->
        if @price then @price + ' Kč' else '-'

    Meal.methods.isExpensive = () ->
        @price > 100

    Meal.methods.isMainCourse = () ->
        @price > 50

    return Meal

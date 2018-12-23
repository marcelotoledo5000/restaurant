class DishesController < ApplicationController
  def index
    @dishes = Dish.all.last(10)
  end

end

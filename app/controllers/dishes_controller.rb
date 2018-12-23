class DishesController < ApplicationController
  def create
    @dish = Dish.new create_params

    if @dish.save
      flash[:success] = 'Dish successfully created'.freeze
      redirect_to dishes_path
    else
      @restaurantes = Restaurante.all
      render :new
    end
  end

  def index
    @dishes = Dish.all.last(10)
  end

  def new
    @dish = Dish.new
    @restaurantes = Restaurante.all
  end

  private

  def create_params
    params.require(:dish).permit(:name, :price, :restaurante_id)
  end
end

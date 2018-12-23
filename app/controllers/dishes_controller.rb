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

  def edit
    @dish = Dish.find_by(id: params[:id])
    @restaurantes = Restaurante.all
  end

  def index
    @dishes = Dish.all.last(10)
  end

  def new
    @dish = Dish.new
    @restaurantes = Restaurante.all
  end

  def update
    @dish = Dish.find_by(id: params[:id])
    @restaurantes = Restaurante.all

    if @dish.update_attributes(create_params)
      flash[:success] = "Dish was successfully updated"
      redirect_to dishes_path
    else
      render 'edit'
    end
  end

  private

  def create_params
    params.require(:dish).permit(:name, :price, :restaurante_id)
  end
end

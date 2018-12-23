class RestaurantesController < ApplicationController
  def create
    @restaurante = Restaurante.new create_params

    if @restaurante.save
      flash[:success] = 'Restaurant successfully created'.freeze
      redirect_to restaurantes_path
    else
      flash[:error] = 'Something went wrong'.freeze
      render 'new'
    end
  end

  def index
    @restaurantes = Restaurante.all.last(10)
  end

  def new
    @restaurante = Restaurante.new
  end

  private

  def create_params
    params.require(:restaurante).permit(:name)
  end
end

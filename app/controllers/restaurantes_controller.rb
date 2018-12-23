class RestaurantesController < ApplicationController
  def create
    @restaurante = Restaurante.new create_params

    if @restaurante.save
      flash[:success] = 'Restaurant successfully created'.freeze
      redirect_to restaurantes_path
    else
      render :new
    end
  end

  def destroy
    Restaurante.find_by(id: params[:id]).destroy

    redirect_to restaurantes_path
  end

  def edit
    @restaurante = Restaurante.find_by(id: params[:id])
  end

  def index
    @restaurantes = Restaurante.all.last(10)
  end

  def new
    @restaurante = Restaurante.new
  end

  def update
    @restaurante = Restaurante.find_by(id: params[:id])

    if @restaurante.update(create_params)
      flash[:success] = 'Restaurant was successfully updated'.freeze
      redirect_to restaurantes_path
    else
      flash[:error] = 'Something went wrong'.freeze
      render :edit
    end
  end

  private

  def create_params
    params.require(:restaurante).permit(:name)
  end
end

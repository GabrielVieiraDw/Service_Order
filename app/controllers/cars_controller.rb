class CarsController < ApplicationController
  before_action :set_car, only: %i[edit destroy update]

  def index
    @car = Car.all.order(:model)
  end

  def new
    @car = Car.new
  end
  
  def create
    @car = Car.new(car_params)
    if @car.save
      flash[:success] = 'Car created'
      redirect_to cars_path
    else
      flash[:erros] = @car.error.full_messages
      redirect_to new_car_path
    end
  end

  def edit
  end

  def update
    if @car.update(car_params)
      redirect_to cars_path, notice: 'Car updated'
    else 
      render :edit
    end
  end

  def destroy
    if @car.destroy
      redirect_to cars_path, notice: 'Car deleted'
    else
      render :index
    end
  end

  private

  def car_params
    params.require(:car).permit(:maker, :model, :plate_number, :year, :km)
  end

  def set_car
    @car = Car.find(params[:id])
  end
end

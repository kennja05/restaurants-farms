class OrdersController < ApplicationController
  
  def show
    @order = Order.find(params[:id])
  end 
  
  
  def new
    @fruits = Fruit.all
    @order = Order.new
  end

  def create
    byebug
    @order = Order.create!(order_params)
    #render :new
    
    redirect_to new_order_path
  end 

  def edit
  end

  private

  def order_params
    params.require(:order).permit(:quantity, :farm_id, :restaurant_id, :fruit_id)
  end 

end

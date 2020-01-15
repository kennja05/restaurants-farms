class OrdersController < ApplicationController
  
  def show
    @order = Order.find(params[:id])
    
  end 
  
  
  def new
    farm = Farm.find(params[:farm_id])
    @fruits = farm.fruits
    @order = Order.new
    
  end

  def create
    
    farm = Farm.find(params[:farm_id])
    fruits = farm.fruits.select {|fruit| params[fruit.name].to_i > 0 }
    fruits.each do |fruit|
      order = Order.create!(fruit: fruit, farm_id: params[:farm_id], quantity: params[fruit.name].to_i, restaurant_id: 1)
      byebug
    end 

    #render :new
    
    redirect_to restaurants_path
  end 

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    redirect_to order_path(@order)
  end 

  private

  def order_params
    params.require(:order).permit(:quantity, :farm_id, :restaurant_id, :fruit_id)
  end 

end

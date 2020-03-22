class FoodsController < ApplicationController

  def index
  @foods = Foods.all
  end
  
  def new
  @food = Foods.new
  end
  
  def create
  @food = Foods.new(food_params)
    if @food.save
      redirect_to '/foods'
    else
      render '/foods/new'
    end
  end
  
  def show
    @food = Foods.find(params[:id])
  end
  
  def edit
    @food = Foods.find(params[:id])
  end
  
  def update
 # Find object using form parameters
    @food = Foods.find(params[:id])
   # Update the object
    if @food.update_attributes(food_params)
   # If update succeeds, redirect to the list action
      flash[:sucess] = "Food Item updated."
      redirect_to(:action => 'index')
    else
   # If save fails, redisplay the form so user can fix problems
    render('edit')
    end
  end
  
  def destroy
  @food = Foods.find(params[:id]).destroy
  flash[:success] = "Food Item deleted."
  redirect_to(:action => 'index')
  end

private
  def food_params
  params.require(:foods).permit(:foods, :food_id, :food_name, :cost, :unit_qty)
  end
  
end


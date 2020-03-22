class MealsController < ApplicationController
  def index
  @meals = Meals.all
  end
  def new
  @meal = Meals.new
  end
  def create
  @meal = Meals.new(meal_params)
    if @meal.save
    redirect_to '/meals'
    else
    render '/meals/new'
    end
  end
  def show
  @meal = Meals.find(params[:id])
  end
  def edit
  @meal = Meals.find(params[:id])
  end
  def update
 # Find object using form parameters
 @meal = Meals.find(params[:id])
   # Update the object
   if @meal.update_attributes(meal_params)
   # If update succeeds, redirect to the list action
   flash[:sucess] = "Meal Item updated."
   redirect_to(:action => 'index')
   else
   # If save fails, redisplay the form so user can fix problems
   render('edit')
   end
  end
  def destroy
  @meal = Meals.find(params[:id]).destroy
  flash[:success] = "Meal Item deleted."
  redirect_to(:action => 'index')
  end

private
  def meal_params
  params.require(:meals).permit(:meals, :image, :meal_name, :category, :prep_time, :servings, :food_id => [])
  end

end

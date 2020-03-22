class RecipiesController < ApplicationController
    def index
        @recipies = Recipie.all
    end
  def new
  @recipie = Recipie.new
  end
  def create
  @recipie = Recipie.new(recipie_params)
    if @recipie.save
    redirect_to '/recipies'
    else
    render '/recipies/new'
    end
  end
  def show
  @recipie = Recipie.find(params[:id])
  end
  def edit
  @recipie = Recipie.find(params[:id])
  end
  def update
 # Find object using form parameters
 @recipie = Recipie.find(params[:id])
   # Update the object
   if @recipie.update_attributes(recipie_params)
   # If update succeeds, redirect to the list action
   flash[:sucess] = "Recipie Item updated."
   redirect_to(:action => 'index')
   else
   # If save fails, redisplay the form so user can fix problems
   render('edit')
   end
  end
  def destroy
  @recipie = Recipie.find(params[:id]).destroy
  flash[:success] = "Recipie Item deleted."
  redirect_to(:action => 'index')
  end

private
  def recipie_params
  params.require(:recipie).permit(:recipie, :image, :meal_id, :meal_name, :food_id, :instructions)
  end
end

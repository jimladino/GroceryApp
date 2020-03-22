class ChoosersController < ApplicationController
    def index
        @choosers = Chooser.all
    end
  def new
  @chooser = Chooser.new
  end
  def create
  @chooser = Chooser.new(chooser_params)
    if @chooser.save
    redirect_to '/choosers'
    else
    render '/choosers/new'
    end
  end
  def show
  @chooser = Chooser.find(params[:id])
  end
  def edit
  @chooser = Chooser.find(params[:id])
  end
  def update
 # Find object using form parameters
 @chooser = Chooser.find(params[:id])
   # Update the object
   if @chooser.update_attributes(chooser_params)
   # If update succeeds, redirect to the list action
   flash[:sucess] = "Chooser Item updated."
   redirect_to(:action => 'index')
   else
   # If save fails, redisplay the form so user can fix problems
   render('edit')
   end
  end
  def destroy
  @chooser = Chooser.find(params[:id]).destroy
  flash[:success] = "Chooser Item deleted."
  redirect_to(:action => 'index')
  end
  def groceries
    @choosers = Chooser.all      
  end
  

private
  def chooser_params
  params.require(:chooser).permit(:chooser, :day, :breakfast, :lunch, :supper)
  end
end

class EventsController < ApplicationController

  def new
  end

  def create
  	@events = Event.new(event_params)
	  if @events.save
      redirect_to @events
	  end
  end

  def show
  	@events = Event.friendly.find(params[:id])
	end

  def update
    @events = Event.friendly.find(params[:id])
   
    if @events.update(event_params)
      redirect_to @events
    else
      render 'edit'
    end
  end

  def destroy
    @events = Event.friendly.find(params[:id])
    @events.destroy
   
    redirect_to home_path
  end

  private
  def event_params
    params.require(:events).permit(:name, :address, :date, :hour, :age,
    :club_name, :description, :image, :club_logo)
  end
end

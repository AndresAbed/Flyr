class EventsController < ApplicationController

  def create
  	@event = Event.new(event_params)
	  if @event.save
      redirect_to @event
	  end
  end

  def show
  	@event = Event.friendly.find(params[:id])
    @list = @event.lists
    @listuser = @event.listusers
	end

  def update
    @event = Event.friendly.find(params[:id])
   
    if @event.update(event_params)
      redirect_to @event
    else
      redirect_to :back
    end
  end

  def destroy
    @event = Event.friendly.find(params[:id])
    @event.destroy
   
    redirect_to home_path
  end

  private
  def event_params
    params.require(:event).permit(:name, :address, :date, :hour, :age,
    :description, :image, :event_logo)
  end
end

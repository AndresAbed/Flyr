class EventsController < ApplicationController

  def new
  end

  def create
  	@event = Event.new(event_params)
	  @event.save
	  redirect_to home_path
  end

  def show
  	@event = Event.find(params[:id])
	end

  private
  def event_params
    params.require(:event).permit(:name, :address, :date, :hour, :age,
    :club_name, :description, :image, :club_logo)
  end
end

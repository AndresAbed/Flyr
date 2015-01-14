class HomeController < ApplicationController
  def index
  	@banner = Banner.all

  	@monday = Event.where("extract(dow from date) = ?", 1)
  	@tuesday = Event.where("extract(dow from date) = ?", 2)
  	@wednesday = Event.where("extract(dow from date) = ?", 3)
  	@thursday = Event.where("extract(dow from date) = ?", 4)
  	@friday = Event.where("extract(dow from date) = ?", 5)
  	@saturday = Event.where("extract(dow from date) = ?", 6)
  	@sunday = Event.where("extract(dow from date) = ?", 0)

    @event = Event.search(params[:search])
  end
end

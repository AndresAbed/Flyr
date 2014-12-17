class HomeController < ApplicationController
  def index
  	@events = Event.all
  	@banner = Banner.all
  end	
end

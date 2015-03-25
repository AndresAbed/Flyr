class HomeController < ApplicationController
  def index
    
  	@banner = Banner.all
    @clubs = Club.all

    # Events and Clubevents by day
  	@eventmonday = Event.where("extract(dow from date) = ?", 1)
    @eventtuesday = Event.where("extract(dow from date) = ?", 2)
    @eventwednesday = Event.where("extract(dow from date) = ?", 3)
    @eventthursday = Event.where("extract(dow from date) = ?", 4)
    @eventfriday = Event.where("extract(dow from date) = ?", 5)
    @eventsaturday = Event.where("extract(dow from date) = ?", 6)
    @eventsunday = Event.where("extract(dow from date) = ?", 0)
    
    @clubeventmonday = Clubevent.where("extract(dow from date) = ?", 1)
    @clubeventtuesday = Clubevent.where("extract(dow from date) = ?", 2)
    @clubeventwednesday = Clubevent.where("extract(dow from date) = ?", 3)
    @clubeventthursday = Clubevent.where("extract(dow from date) = ?", 4)
    @clubeventfriday = Clubevent.where("extract(dow from date) = ?", 5)
    @clubeventsaturday = Clubevent.where("extract(dow from date) = ?", 6)
    @clubeventsunday = Clubevent.where("extract(dow from date) = ?", 0)

    # Events and Clubevents search
    @eventsearch = Event.search(params[:search])
    @clubevent = Clubevent.search(params[:search])
  end
end

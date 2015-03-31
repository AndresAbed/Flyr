class HomeController < ApplicationController
  def index
    
  	@banner = Banner.all
    @clubs = Club.all

    # Events and Clubevents by day
  	@eventmonday = Event.where("extract(dow from date) = ?", 1).where(ended: false)
    @eventtuesday = Event.where("extract(dow from date) = ?", 2).where(ended: false)
    @eventwednesday = Event.where("extract(dow from date) = ?", 3).where(ended: false)
    @eventthursday = Event.where("extract(dow from date) = ?", 4).where(ended: false)
    @eventfriday = Event.where("extract(dow from date) = ?", 5).where(ended: false)
    @eventsaturday = Event.where("extract(dow from date) = ?", 6).where(ended: false)
    @eventsunday = Event.where("extract(dow from date) = ?", 0).where(ended: false)
    
    @clubeventmonday = Clubevent.where("extract(dow from date) = ?", 1).where(ended: false, approved: true)
    @clubeventtuesday = Clubevent.where("extract(dow from date) = ?", 2).where(ended: false, approved: true)
    @clubeventwednesday = Clubevent.where("extract(dow from date) = ?", 3).where(ended: false, approved: true)
    @clubeventthursday = Clubevent.where("extract(dow from date) = ?", 4).where(ended: false, approved: true)
    @clubeventfriday = Clubevent.where("extract(dow from date) = ?", 5).where(ended: false, approved: true)
    @clubeventsaturday = Clubevent.where("extract(dow from date) = ?", 6).where(ended: false, approved: true)
    @clubeventsunday = Clubevent.where("extract(dow from date) = ?", 0).where(ended: false, approved: true)

    # Events and Clubevents search
    @eventsearch = Event.search(params[:search]).where(ended: false)
    @clubevent = Clubevent.search(params[:search]).where(ended: false, approved: true)
    
  end
end

class HomeController < ApplicationController
  def index
    
  	@banner = Banner.all
    @clubs = Club.all

    # Events and Clubevents by day
  	@eventmonday = Event.where("extract(dow from date) = ?", 1).where(approved: true, ended: false)
    @eventtuesday = Event.where("extract(dow from date) = ?", 2).where(approved: true, ended: false)
    @eventwednesday = Event.where("extract(dow from date) = ?", 3).where(approved: true, ended: false)
    @eventthursday = Event.where("extract(dow from date) = ?", 4).where(approved: true, ended: false)
    @eventfriday = Event.where("extract(dow from date) = ?", 5).where(approved: true, ended: false)
    @eventsaturday = Event.where("extract(dow from date) = ?", 6).where(approved: true, ended: false)
    @eventsunday = Event.where("extract(dow from date) = ?", 0).where(approved: true, ended: false)
    
    @clubeventmonday = Clubevent.where("extract(dow from date) = ?", 1).where(approved: true, ended: false)
    @clubeventtuesday = Clubevent.where("extract(dow from date) = ?", 2).where(approved: true, ended: false)
    @clubeventwednesday = Clubevent.where("extract(dow from date) = ?", 3).where(approved: true, ended: false)
    @clubeventthursday = Clubevent.where("extract(dow from date) = ?", 4).where(approved: true, ended: false)
    @clubeventfriday = Clubevent.where("extract(dow from date) = ?", 5).where(approved: true, ended: false)
    @clubeventsaturday = Clubevent.where("extract(dow from date) = ?", 6).where(approved: true, ended: false)
    @clubeventsunday = Clubevent.where("extract(dow from date) = ?", 0).where(approved: true, ended: false)

    # Events and Clubevents search
    @eventsearch = Event.search(params[:search]).where(approved: true, ended: false)
    @clubevent = Clubevent.search(params[:search]).where(approved: true, ended: false)
  end
end

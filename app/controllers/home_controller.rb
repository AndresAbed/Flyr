class HomeController < ApplicationController
  def index
    
  	@banner = Banner.all

    # Events and Clubevents by day
  	@eventmonday = Event.where("extract(dow from date) = ?", 1)
      .where(ended: false).order("date DESC")
    @eventtuesday = Event.where("extract(dow from date) = ?", 2)
      .where(ended: false).order("date DESC")
    @eventwednesday = Event.where("extract(dow from date) = ?", 3)
      .where(ended: false).order("date DESC")
    @eventthursday = Event.where("extract(dow from date) = ?", 4)
      .where(ended: false).order("date DESC")
    @eventfriday = Event.where("extract(dow from date) = ?", 5)
      .where(ended: false).order("date DESC")
    @eventsaturday = Event.where("extract(dow from date) = ?", 6)
      .where(ended: false).order("date DESC")
    @eventsunday = Event.where("extract(dow from date) = ?", 0)
      .where(ended: false).order("date DESC")
    
    @clubeventmonday = Clubevent.where("extract(dow from date) = ?", 1)
      .where(ended: false, approved: true).order("date DESC")
    @clubeventtuesday = Clubevent.where("extract(dow from date) = ?", 2)
      .where(ended: false, approved: true).order("date DESC")
    @clubeventwednesday = Clubevent.where("extract(dow from date) = ?", 3)
      .where(ended: false, approved: true).order("date DESC")
    @clubeventthursday = Clubevent.where("extract(dow from date) = ?", 4)
      .where(ended: false, approved: true).order("date DESC")
    @clubeventfriday = Clubevent.where("extract(dow from date) = ?", 5)
      .where(ended: false, approved: true).order("date DESC")
    @clubeventsaturday = Clubevent.where("extract(dow from date) = ?", 6)
      .where(ended: false, approved: true).order("date DESC")
    @clubeventsunday = Clubevent.where("extract(dow from date) = ?", 0)
      .where(ended: false, approved: true).order("date DESC")

    # Events, Clubevents and Clubs search
    @eventsearch = Event.search(params[:search])
      .where(ended: false).order("date DESC")
    @clubevent = Clubevent.search(params[:search])
      .where(ended: false, approved: true).order("date DESC")
    @clubs = Club.search(params[:clubsearch]) 
  end
end

class ClubeventsController < ApplicationController

  def create
    @club = Club.friendly.find(params[:club_id])
    @clubevent = Clubevent.new(event_params)
    @clubevent.club_id = @club.id
    @clubevent.address = @club.address
    @clubevent.club_logo = @club.logo

    if @clubevent.save
      redirect_to club_clubevent_path(@club, @clubevent)
    end
  end

  def show
    @club = Club.friendly.find(params[:club_id])
    @clubevent = Clubevent.friendly.find(params[:id])
    @clublist = @clubevent.clublists
    @clublistusers = @clubevent.clublistusers
  end

  def update
    @club = Club.friendly.find(params[:club_id])
    @clubevent = Clubevent.friendly.find(params[:id])
   
    if @clubevent.update(event_params)
      redirect_to club_clubevent_path(@club, @clubevent)
    else
      redirect_to :back
    end
  end

  def destroy
    @club = Club.friendly.find(params[:club_id])
    @clubevent = Clubevent.friendly.find(params[:id])
    @clubevent.destroy
   
    redirect_to club_path(@club)
  end

  private
  def event_params
    params.require(:clubevent).permit(:name, :date, :hour, :age, :description, :image, :club_id, :address, :club_logo)
  end
end

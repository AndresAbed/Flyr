class ClubsController < ApplicationController

  def create
    @club = Club.new(club_params)

    if @club.save
      redirect_to @club
    end
  end

  def show
    @club = Club.friendly.find(params[:id])
    @eventsNumber = @club.clubevents.count
    @listsNumber = @club.clublists.count
    @events = @club.clubevents.where(approved: true, ended: false)
  end

  def update
    @club = Club.friendly.find(params[:id])
    
    if @club.update(club_params)
      redirect_to @club
    else
      redirect_to :back
    end
  end

  def destroy
    @club = Club.friendly.find(params[:id])
    @club.destroy
   
    redirect_to home_path
  end

  private
  def club_params
    params.require(:club).permit(:name, :address, :description, :logo, 
      :cover_image, :facebook, :twitter, :googleplus, :instagram, :youtube)
  end
end

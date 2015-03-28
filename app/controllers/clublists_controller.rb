class ClublistsController < ApplicationController
  def create
    @club = Club.friendly.find(params[:club_id])
    @clubevent = Clubevent.friendly.find(params[:clubevent_id])
    @clublist = Clublist.new ({
      list_name: current_user.name,
      list_image: current_user.profile_img,
      clubevent_id: @clubevent.id, 
      user_id: current_user.id,
      club_id: @club.id})

    if @clublist.save 
      respond_to do |format|
        format.html { redirect_to :back }
        format.js
      end
    end
  end

  def show
    @clublist = Clublist.find(params[:id])
  end

  def destroy
    @club = Club.friendly.find(params[:club_id])
    @clubevent = Clubevent.friendly.find(params[:clubevent_id])
    @clublist = Clublist.find(params[:id])

    if @clublist.destroy 
      respond_to do |format|
        format.html { redirect_to :back }
        format.js
      end
    end
  end
end

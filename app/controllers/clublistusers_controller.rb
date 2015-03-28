class ClublistusersController < ApplicationController
  def create
    @club = Club.friendly.find(params[:club_id])
    @clubevent = Clubevent.friendly.find(params[:clubevent_id])
    @clublist = Clublist.find(params[:clublist_id])
    @clublistuser = Clublistuser.new ({
      username: current_user.name,
      clublist_id: @clublist.id,
      clubevent_id: @clubevent.id,
      user_id: current_user.id})

    if @clublistuser.save 
      respond_to do |format|
        format.html { redirect_to :back }
        format.js
      end
    end
  end

  def destroy
    @club = Club.friendly.find(params[:club_id])
    @clubevent = Clubevent.friendly.find(params[:clubevent_id])
    @clublist = Clublist.find(params[:clublist_id])
    @clublistuser = Clublistuser.find(params[:id])
   
    if @clublistuser.destroy
      respond_to do |format|
        format.html { redirect_to :back }
        format.js
      end
    end
  end
end

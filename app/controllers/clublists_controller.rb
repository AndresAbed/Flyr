class ClublistsController < ApplicationController
  def create
    @club = Club.friendly.find(params[:club_id])
    @clubevent = Clubevent.friendly.find(params[:clubevent_id])
    @clublist = Clublist.new :list_name => current_user.username,
    :list_image => current_user.profile_img,
    :clubevent_id => @clubevent.id, :user_id => current_user.id,
    :club_id => @club.id

    if @clublist.save
      redirect_to :back
    else
      redirect_to :back  
    end
  end

  def show
    @clublist = Clublist.find(params[:id])
  end

  def destroy
    @clublist = Clublist.find(params[:id])
    @clublist.destroy
   
    redirect_to :back
  end

  private
  def list_params
    params.require(:clublist).permit(:name, :list_image, :clubevent_id, :user_id)
  end
end

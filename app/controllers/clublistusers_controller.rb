class ClublistusersController < ApplicationController
  def create
    @clubevent = Clubevent.friendly.find(params[:clubevent_id])
    @clublist = Clublist.find(params[:clublist_id])
    @clublistuser = Clublistuser.new :username => current_user.username,
    :clublist_id => @clublist.id,
    :clubevent_id => @clubevent.id

    if @clublistuser.save
      redirect_to :back
    else
      redirect_to :back
    end
  end

  def destroy
    @clublistuser = Clublistuser.find(params[:id])
    @clublistuser.destroy
   
    redirect_to :back
  end

  private
  def list_user_params
    params.require(:clublist_user).permit(:username, :clublist_id, :clubevent_id)
  end
end

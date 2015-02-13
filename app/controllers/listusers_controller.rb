class ListusersController < ApplicationController
  def create
    @event = Event.friendly.find(params[:event_id])
    @list = List.find(params[:list_id])
    @listuser = Listuser.new :username => current_user.username,
    :list_id => @list.id,
    :event_id => @event.id

    if @listuser.save
      redirect_to :back
    else
      redirect_to :back
    end
  end

  def destroy
    @listuser = Listuser.find(params[:id])
    @listuser.destroy
   
    redirect_to :back
  end

  private
  def list_user_params
    params.require(:list_user).permit(:username, :list_id, :event_id)
  end
end

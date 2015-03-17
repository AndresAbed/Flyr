class ListusersController < ApplicationController
  def create
    @event = Event.friendly.find(params[:event_id])
    @list = List.find(params[:list_id])
    @listuser = Listuser.new :username => current_user.username,
    :list_id => @list.id,
    :event_id => @event.id,
    :user_id => current_user.id

    if @listuser.save 
      respond_to do |format|
        format.html { redirect_to :back }
        format.js
      end
    end
  end

  def destroy
    @event = Event.friendly.find(params[:event_id])
    @listuser = Listuser.find(params[:id])
    @listuser.destroy
   
    if @listuser.destroy
      respond_to do |format|
        format.html { redirect_to :back }
        format.js
      end
    end
  end

  private
  def list_user_params
    params.require(:list_user).permit(:username, :list_id, :event_id)
  end
end

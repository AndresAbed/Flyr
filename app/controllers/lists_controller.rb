class ListsController < ApplicationController
  def create
    @event = Event.friendly.find(params[:event_id])
    @list = List.new ({
      list_name: current_user.name,
      list_image: current_user.profile_img,
      event_id: @event.id, 
      user_id: current_user.id})

    if @list.save 
      respond_to do |format|
        format.html { redirect_to :back }
        format.js
      end
    end
  end

  def show
    @list = List.find(params[:id])
    @listuser = @lists.listusers
  end

  def destroy
    @event = Event.friendly.find(params[:event_id])
    @list = List.find(params[:id])
   
    if @list.destroy
      respond_to do |format|
        format.html { redirect_to :back }
        format.js
      end
    end
  end
end

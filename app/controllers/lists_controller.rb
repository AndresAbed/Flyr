class ListsController < ApplicationController
  def create
    @event = Event.friendly.find(params[:event_id])
    @list = List.new :name => current_user.username || current_user.name,
    :list_image => current_user.profile_img,
    :event_id => @event.id, :user_id => current_user.id

    if @list.save
      redirect_to :back
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
   
    redirect_to :back
  end

  private
  def list_params
    params.require(:list).permit(:name, :list_image, :event_id, :user_id)
  end
end

class ListusersController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @listuser = Listuser.new :username => current_user.username,
    :list_id => @list.id

    if @listuser.save
      redirect_to :back
    else
      redirect_to :back
    end
  end

  private
  def list_user_params
    params.require(:list_user).permit(:username, :list_id)
  end
end

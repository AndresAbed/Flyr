class ClubeventsController < ApplicationController

  respond_to :json, :html

  def create
    @club = Club.friendly.find(params[:club_id])
    @clubevent = Clubevent.new(clubevent_params)
    @clubevent.club_id = @club.id
    @clubevent.address = @club.address
    @clubevent.club_name = @club.name
    @clubevent.club_logo = @club.logo
    @clubevent.approved = false
    @clubevent.ended = false

    if @clubevent.save
      @clublist = Clublist.new ({
      list_name: "Flyr",
      list_image: current_user.profile_img,
      clubevent_id: @clubevent.id, 
      club_id: @club.id})

      if @clublist.save 
        redirect_to club_clubevent_path(@club, @clubevent)
      end  
    end
  end

  def show
    @club = Club.friendly.find(params[:club_id])
    @clubevent = Clubevent.friendly.find(params[:id])
  end

  def update
    @club = Club.friendly.find(params[:club_id])
    @clubevent = Clubevent.friendly.find(params[:id])
   
    if @clubevent.update(clubevent_params)
      redirect_to club_clubevent_path(@club, @clubevent)
    else
      redirect_to :back
    end
  end

  def destroy
    @club = Club.friendly.find(params[:club_id])
    @clubevent = Clubevent.friendly.find(params[:id])
    @clubevent.destroy
   
    redirect_to club_path(@club)
  end

  def pending
    events = events_to_approve.map { |e| 
      {name: e.name, url: e.eventUrl}
    }

    respond_with({clubevents: events})
  end

  private
  def clubevent_params
    params.require(:clubevent).permit(:name, :date, :hour, :age, 
                                      :description, :image, :approved, :ended)
  end
end

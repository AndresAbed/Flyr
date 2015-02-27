class MusicsController < ApplicationController
  def create
    @club = Club.friendly.find(params[:club_id])
    @music = Music.new(music_params)
    @music.club_id = @club.id

    if @music.save
      redirect_to club_path(@club)
    end
  end
  
  def update
    @club = Club.friendly.find(params[:club_id])
    @music = Music.find(params[:id])

    if @music.update(music_params)
      redirect_to club_path(@club)
    else
      redirect_to :back
    end
  end

  def destroy
    @music = Music.find(params[:id])
    @music.destroy
   
    redirect_to home_path
  end

  def music_params
    params.require(:music).permit(:name, :club_id)
  end
end

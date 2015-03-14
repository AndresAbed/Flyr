class MusicsController < ApplicationController
  def create
    @club = Club.friendly.find(params[:club_id])
    @music = Music.new(music_params)
    @music.club_id = @club.id
    
    if @music.save 
      respond_to do |format|
        format.html { redirect_to club_path(@club) }
        format.js
      end
    end
  end

  def destroy
    @club = Club.friendly.find(params[:club_id])
    @music = Music.find(params[:id])
    
    if @music.destroy 
      respond_to do |format|
        format.html { redirect_to club_path(@club) }
        format.js
      end
    end
  end

  def music_params
    params.require(:music).permit(:name, :club_id)
  end
end

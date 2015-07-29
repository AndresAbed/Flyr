class ClubimagesController < ApplicationController
  def create
    @club = Club.friendly.find(params[:club_id])
    @clubimage = Clubimage.new(image_params)
    @clubimage.club_id = @club.id
 
    if @clubimage.save
      redirect_to club_path(@club)
    end
  end

  def update
    @clubimage = Clubimage.first
    @club = Club.friendly.find(params[:club_id])
    if @clubimage.img1 = nil 
      @clubimage.img1 = nil
    end
    if @clubimage.img2 = nil 
      @clubimage.img2 = nil
    end
    if @clubimage.img3 = nil 
      @clubimage.img3 = nil
    end
    if @clubimage.img4 = nil 
      @clubimage.img4 = nil
    end
    if @clubimage.img5 = nil 
      @clubimage.img5 = nil
    end
    if @clubimage.img6 = nil 
      @clubimage.img6 = nil
    end

    if @clubimage.update(image_params)
      redirect_to club_path(@club)
    end
  end

  private
  def image_params
    if params[:clubimage]
      params.require(:clubimage).permit(:img1, :img2, :img3, :img4, :img5, :img6)
    else
      hash = {img1: nil, img2: nil, img3: nil, 
              img4: nil, img5: nil, img6: nil}
    end
  end
end

class FeaturesController < ApplicationController

  def create
    @club = Club.friendly.find(params[:club_id])
    @feature = Feature.new(feature_params)
    @feature.club_id = @club.id

    if @feature.save 
      respond_to do |format|
        format.html { redirect_to club_path(@club) }
        format.js
      end
    end
  end

  def update
    @club = Club.friendly.find(params[:club_id])
    @feature = Feature.find(params[:id])

    if @feature.update(feature_params)
      respond_to do |format|
        format.html { redirect_to club_path(@club) }
        format.js
      end
    end
  end

  def feature_params
    params.require(:feature).permit(:text, :club_id, :wifi, :smoking_area, :security, 
      :photos, :birthdays, :credit_cards, :food, :drinks, :gifts, :first_aid, 
      :parking)
  end
end

class BannersController < ApplicationController
	def new
	end

	def create
		@banner = Banner.new(banner_params)
 
		if @banner.save
		  redirect_to home_path
    end
	end

	def update
		@banner = Banner.first
	 
		if @banner.update(banner_params)
			redirect_to home_path
		end
	end

	private
	def banner_params
		params.require(:banner).permit(:image1, :image2, :image3, :image4)
	end
end

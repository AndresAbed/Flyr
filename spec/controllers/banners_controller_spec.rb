require 'rails_helper'

RSpec.describe BannersController, :type => :controller do
  login_admin
  describe 'POST #create' do
    it 'creates the banner' do
      post :create, banner: attributes_for(:banner)
      expect(Banner.count).to eq(1)
    end
    it 'redirects to home path' do
      post :create, banner: attributes_for(:banner)
      expect(response).to redirect_to home_path
    end
  end

  describe 'PUT #update' do
    it 'updates the banner' do
      banner = FactoryGirl.create(:banner)
      put :update, id: banner.id, banner: {
        image1: fixture_file_upload(Rails.root.join('spec', 'images', 'brain.png'), 'image/jpg'),
        image2: fixture_file_upload(Rails.root.join('spec', 'images', 'brain.png'), 'image/jpg'),
        image3: fixture_file_upload(Rails.root.join('spec', 'images', 'brain.png'), 'image/jpg'),
        image4: fixture_file_upload(Rails.root.join('spec', 'images', 'brain.png'), 'image/jpg')
      }
      
      banner.reload
      expect(banner.image1_file_name).to eq("brain.png")
      expect(banner.image2_file_name).to eq("brain.png")
      expect(banner.image3_file_name).to eq("brain.png")
      expect(banner.image4_file_name).to eq("brain.png")
    end
  end
end
include ActionDispatch::TestProcess
FactoryGirl.define do
  factory :banner do
    image1 { fixture_file_upload(Rails.root.join('spec', 'images', 'uu.jpg'), 'image/jpg') }
    image2 { fixture_file_upload(Rails.root.join('spec', 'images', 'uu.jpg'), 'image/jpg') }
    image3 { fixture_file_upload(Rails.root.join('spec', 'images', 'uu.jpg'), 'image/jpg') }
    image4 { fixture_file_upload(Rails.root.join('spec', 'images', 'uu.jpg'), 'image/jpg') }
  end
end

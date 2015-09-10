FactoryGirl.define do
  factory :user do
    email 'andres@gmail.com'
    password '123456'
    username 'Andres'
    name 'Andres'
    profile_img { fixture_file_upload(Rails.root.join('spec', 'images', 'uu.jpg'), 'image/jpg') }
    admin true
  end
end
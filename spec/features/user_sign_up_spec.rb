require 'rails_helper'

feature 'User signs up' do
  scenario 'with valid credentials' do
    visit '/users/sign_up'
    fill_in 'Usuario', with: 'Andres'
    fill_in 'Nombre', with: 'Andres Abed'
    fill_in 'Email', with: 'abedandres@gmail.com'
    fill_in 'Confirmar email', with: 'abedandres@gmail.com'
    fill_in 'Contraseña', with: '12345'
    fill_in 'Repetir contraseña', with: '12345'
    attach_file('user[profile_img]', Rails.root + 'spec/images/brain.png')
    choose('user_admin_true')
    click_on 'Crear'

    expect(current_path).to eq(home_path)
  end
end
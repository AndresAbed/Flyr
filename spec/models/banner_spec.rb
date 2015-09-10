require 'rails_helper'

RSpec.describe Banner, :type => :model do
  it 'has a valid factory' do
    expect(build(:banner)).to be_valid
  end
end

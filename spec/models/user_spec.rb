require 'rails_helper'
RSpec.describe 'listing users' do
  it 'displays lists of existing users' do
    user1 = User.create(first_name: 'Dexter', last_name: 'Clark', email: 'dexter@gmail.com', password: 'password')
    user2 = User.create(first_name: 'Johnny', last_name: 'Chimpo', email: 'mailchimp@gmail.com', password: 'password')
    user3 = User.create(first_name: 'Tom', last_name: 'Riddle', email: 'voldemort@hogwarts.com', password: 'password')
    visit '/users'
    expect(page).to have_text(user1.first_name)
    expect(page).to have_text(user2.first_name)
    expect(page).to have_text(user3.first_name)
  end
end
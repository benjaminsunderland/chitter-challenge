def create_peep
  visit '/peeps/new'
  expect(page.status_code).to eq(200)
  fill_in :title, with: 'title'
  fill_in :text, with: 'text'
  click_button 'submit'
end

def sign_up(email: 'hungryhippo@gmail.com',
            password: 'password',
            password_confirmation: 'password')
  visit('/users/new')
  expect(page.status_code).to eq(200)
  expect(page).to have_content("Please sign up to Chitter")
  fill_in :email, with: email
  fill_in :password, with: password
  fill_in :password_confirmation, with: password_confirmation
  click_button 'Sign up'
end

def sign_in(email:, password:)
  visit '/sessions/new'
  fill_in :email, with: email
  fill_in :password, with: password
  click_button 'Sign in'
end
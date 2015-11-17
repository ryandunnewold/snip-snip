feature "GET /users/sign_up" do
  before do
    @user = User.create(email: 'test@test.com', password: 'testtesttest')
    visit new_user_registration_path
  end

  context "correct username and password" do
    scenario "shows the login page when not logged in" do
      page.should have_css('#user_email')
      page.should have_css('#user_password')
    end

    scenario "allows the user to sign up and shows a successful message" do
      signup "#{SecureRandom.hex(6)}@test.com", 'metova123'
      page.should have_css('.alert-notice')
      page.should have_content("Welcome! You have signed up successfully.")
    end

    scenario "shows a successful message after signing up" do
      signup @user.email, 'metova'
      page.should have_content("has already been taken")
      page.should have_content("minimum is 8 characters")
    end
  end

  def signup(email, password)
    visit new_user_registration_path
    fill_in 'user_email', with: email
    fill_in 'user_password', with: password
    fill_in 'user_password_confirmation', with: password
    find('input[type=submit]').click
  end

end

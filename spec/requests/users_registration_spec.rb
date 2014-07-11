require "spec_helper"

describe "user registration" do
  it "allows new users to register with an email address and password" do
    visit "/users/sign_up"

    fill_in "Username",              :with => "bob123"
    fill_in "Email",                 :with => "test@hotmail.com"
    fill_in "Password",              :with => "applejuiceyo"
    fill_in "Password confirmation", :with => "applejuiceyo"

    click_button "Sign up"

    expect(page).to have_content("Project Black")
  end
end


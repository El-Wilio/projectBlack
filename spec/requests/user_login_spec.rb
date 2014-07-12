require "spec_helper"

describe "user login" do
  it "allows new user to login with their email and password" do
    visit "/login"

    fill_in "Email",                 :with => "ned_stark@theNorth.com"
    fill_in "Password",              :with => "unluckyguy123"

    click_button "Sign in"

    expect(page).to have_content("Project Black")
  end

end


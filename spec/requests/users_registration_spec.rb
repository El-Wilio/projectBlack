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

 it "doesn't allow new users to register with a password that is too short" do
   visit "/users/sign_up"
   fill_in "Username",              :with => "bob123"
   fill_in "Email",                 :with => "test@hotmail.com"
   fill_in "Password",              :with => "123"
   fill_in "Password confirmation", :with => "123"

    click_button "Sign up"

    expect(page).not_to have_content("Project Black")
 end 

 it "doesn't allow new users to register with a password that is too long" do
   visit "/users/sign_up"
   fill_in "Username",              :with => "bob123"
   fill_in "Email",                 :with => "test@hotmail.com"
   fill_in "Password",              :with => "this password is way too long but I will still try to pass it!!!!!!!!"
   fill_in "Password confirmation", :with => "this password is way too long but I will still try to pass it!!!!!!!!"

    click_button "Sign up"

    expect(page).not_to have_content("Project Black")
 end

 it "doesn't allow new users to register if the password confirmation field doesn't match" do
   visit "/users/sign_up"
   fill_in "Username",              :with => "bob123"
   fill_in "Email",                 :with => "test@hotmail.com"
   fill_in "Password",              :with => "back_to_the_future"
   fill_in "Password confirmation", :with => "back_to_the_past"

    click_button "Sign up"

    expect(page).not_to have_content("Project Black")
 end


 
end


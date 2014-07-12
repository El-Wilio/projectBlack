class UsersController < ApplicationController
  def view
    if user_signed_in?
      @user = current_user
    end
  end
end

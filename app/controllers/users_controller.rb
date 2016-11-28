class UsersController < ApplicationController


  def show
    if current_user
      # Nothing here yet
    else
      redirect_to new_user_session_path
    end
  end


end

class UsersController < ApplicationController

def show
  @user = User.find_by("id" => params["id"])

  logger.debug @user["id"].inspect
  logger.debug cookies["user_id"].inspect

  if (@user["id"] != cookies["user_id"].to_i)
    redirect_to "/users", :notice => "Please log out and try again"
  end
end

def create
  existing_user = User.find_by("username" => params["username"])

  if existing_user == nil
    User.create("username" => params["username"],
                "password" => params["password"],
                "name" => params["name"])

    redirect_to "/users", :notice => "You have been successfully added. Please Sign In to access your profile."
  else
    @message = "Another chocolate lover has that username! Try again."
    render "new"
    end
  end

def update
  the_user = User.find_by(params["id"])
  the_user.update("username" => params["username"],
                "password" => params["password"],
                "name" => params["name"])
  redirect_to '/users', :notice => "Your changes have been saved."
end

end
class SessionsController < ApplicationController

  def authenticate
    the_user = User.find_by("username" => params["username"])
    if the_user != nil
      if the_user["password"] == params["password"]
        cookies["user_id"] = the_user["id"]
        redirect_to "/users/#{the_user["id"]}", :notice => "Hi there #{the_user["username"]}!"
      else
        logger.debug "Hi there!"
        redirect_to "/login", :notice => "Unknown password."
      end
    else
      redirect_to "/login", :notice => "Unknown username."
    end
  end

  def logout
    cookies.delete("user_id")
    redirect_to "/", :notice => "Thanks for stopping by!"
  end

end

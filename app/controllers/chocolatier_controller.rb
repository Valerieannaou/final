class ChocolatierController < ApplicationController

  # Try commenting out or removing this code entirely
  # to see what would happen.
  def destroy
    chocolatier = Chocolatier.find_by("id" => params["id"])
    chocolatier.delete
    redirect_to "/chocolatiers"
  end

  # Receive form submitted from /chocolatiers/new
  def create
    Chocolatier.create("name" => params["full_name"], "logo_url" => params["logo"])
    redirect_to "/chocolatiers"
  end

  # Receive form submitted from /chocolatiers/edit
  def update
    chocolatier = Chocolatier.find_by("id" => params["id"])
    chocolatier.update("name" => params["full_name"], "logo_url" => params["logo"])
    redirect_to "/chocolatiers"
  end

end

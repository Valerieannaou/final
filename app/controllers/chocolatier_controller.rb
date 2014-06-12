class ChocolatierController < ApplicationController
  
  def create
    Chocolatier.create("name" => params["name"],
                      "logo_url" => params["logo"],
                      "origin" => params["origin"],
                      "website_url" => params["website"])

    redirect_to "/chocolatiers"
  end

  def update
    chocolatier = Chocolatier.find_by("id" => params["id"])
    chocolatier.update("name" => params["name"],
                      "logo_url" => params["logo"],
                      "origin" => params["origin"],
                      "website_url" => params["website"])

      redirect_to "/chocolatiers"
  end

  def destroy
    chocolatier = Chocolatier.find_by("id" => params["id"])
    chocolatier.delete
    redirect_to "/chocolatiers"
  end

  end
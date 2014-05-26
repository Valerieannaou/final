class ChocolateController < ApplicationController

  def create
    Chocolate.create("name" => params["name"],
                 "type" => params["type_id"],
                 "photo_url" => params["photo"],
                 "chocolatier_id" => params["chosen_chocolatier_id"]
                 "description" => params["description"]
                 "category" =>["category_id"])

    redirect_to "/chocolates"
  end
end

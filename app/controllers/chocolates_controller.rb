class ChocolatesController < ApplicationController
  def index
  end
  
  # def new
  #   # @chocolatier = Chocolatier.find(params[:chocolatier_id])
  #   @chocolate = @chocolatier.chocolates.build
  # end

  def create
    @chocolate = Chocolate.create("name" => params["name"],
                  "description" => params["description"],
                  "chocolatier_id" => params["chosen_chocolatier_id"],
                  "photo_url" => params["url"],
                  "type_id" => params["chosen_type_id"],
                  "category_id" => params["chosen_category_id"])
                  
      if @chocolate.save
        redirect_to "/chocolates/#{@chocolate["id"]}"
      else
        render :action => "new"
      end
  end

  def edit
    @chocolate = Chocolate.find(params[:id])
  end

  def update
    @chocolate = Chocolate.find(params[:id])
    @chocolate.update("name" => params["name"],
                      "description" => params["description"],
                      "photo_url" => params["url"],
                      "chocolatier_id" => params["chosen_chocolatier_id"],
                      "type_id" => params["chosen_type_id"],
                      "category_id" => params["chosen_category_id"])
                      
      redirect_to "/chocolates/#{@chocolate["id"]}"
  end

  def destroy
    @chocolate = Chocolate.find(params[:id])
    @chocolate.destroy
    redirect_to "/chocolates"
  end

  end
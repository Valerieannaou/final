class ChocolateController < ApplicationController

  def new
    @chocolatier = Chocolatier.find(params[:chocolatier_id])
    @chocolate = @chocolatier.chocolates.build
  end

  def create
    @chocolatier = Chocolatier.find(params[:chocolatier_id])
    @chocolate = @chocolatier.chocolates.build(params[:chocolate])
      if @chocolate.save
        redirect_to "/chocolatiers/#{@chocolatier["id"]}/chocolates/#{@chocolate["id"]}"
      else
        render :action => "new"
      end
  end

  def edit
    @chocolatier = Chocolatier.find(params[:chocolatier_id])
    @chocolate = @chocolatier.chocolates.find(params[:id])
  end

  def update
    @chocolatier = Chocolatier.find(params[:chocolatier_id])
    @chocolate = Chocolate.find(params[:id])
      if @chocolate.update_attributes(params[:chocolate])
        redirect_to "/chocolatiers/#{@chocolate["chocolatier_id"]}/chocolates/#{@chocolate["id"]}"
      else
        render :action => "edit"
      end
  end

  def destroy
    @chocolatier = Chocolatier.find(params[:chocolatier_id])
    @chocolate = Chocolate.find(params[:id])
    @chocolate.destroy
    redirect_to "/chocolates"
  end

  end
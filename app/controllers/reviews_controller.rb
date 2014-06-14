class ReviewsController < ApplicationController

  def create
    Review.create("chocolate_id" => params["chocolate_id"],
                  "rating" => params["rating"],
                  "comment" => params["content"])
    redirect_to "/chocolates/#{params["chocolate_id"]}", :notice => "Thanks for your review!"

  end


end

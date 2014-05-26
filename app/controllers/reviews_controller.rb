class ReviewsController < ApplicationController

  def create
    Review.create("chocolate_id" => params["chocolate_id"],
                  "rating" => params["rating"],
                  "content" => params["comment"])
    redirect_to "/chocolate/#{params["chocolate_id"]}", :notice => "Thanks for your review!"

  end


end

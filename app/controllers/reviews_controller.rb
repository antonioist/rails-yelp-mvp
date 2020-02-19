class ReviewsController < ApplicationController
  before_action :set_review, only: [:new, :create]
def new
   #searching for the restaurant that we are creating the new review
  @review = Review.new # to know what we are making
end

def create
  @review = Review.new(review_params)
  @review.restaurant = @restaurant #saving restaurnt id in the foreing key of review and that creates the asociation
  @review.save
  redirect_to restaurant_path(@restaurant)
end

private

def set_review
  @restaurant = Restaurant.find(params[:restaurant_id])
end

def review_params
  params.require(:review).permit(:content, :rating)
end
end

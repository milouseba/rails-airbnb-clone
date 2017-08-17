class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end
  def new
    @order = Order.find(params[:order_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.order = Order.find(params[:order_id])
    @review.save
  end

  private

  def review_params
    params.require(:review).permit(:description, :rating)
  end
end

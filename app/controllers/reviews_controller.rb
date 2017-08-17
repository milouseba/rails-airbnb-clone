class ReviewsController < ApplicationController
  before_action :set_order
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.order = Order.find(params[:order_id])
    if @review.save
      redirect_to article_path(@review.order.article)
    else
      render :new
    end
  end

  private
  def set_order
    @order = Order.find(params[:order_id])
  end
  def review_params
    params.require(:review).permit(:description, :rating)
  end
end

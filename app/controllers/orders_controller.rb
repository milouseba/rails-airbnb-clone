class OrdersController < ApplicationController

  before_action :set_article, only: [ :create]

  def create
    @order = Order.new(quantity: params[:order][:quantity].to_i, confirmed: false, delivered: false,
                       article_id: @article.id, user_id: current_user.id)
    @order.save
    redirect_to article_path(@article.id)
  end

  private

  def set_article
    @article = Article.find(params[:article_id])
  end

end

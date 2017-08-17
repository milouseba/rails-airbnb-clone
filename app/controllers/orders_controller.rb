class OrdersController < ApplicationController

  before_action :set_article, only: [ :create ]

  def create
    @order = Order.new(quantity: params[:order][:quantity].to_i, confirmed: "pending", delivered: "pending",
                       article_id: @article.id, user_id: current_user.id)
    @order.save
    # @orders = Order.where(User.find(@article.id) = current_user.id)
    redirect_to orders_buy_path
  end

  def order_buy
    @orders = Order.where(user_id: current_user.id)
  end

  def order_sell
    @articles = Article.where(user_id: current_user.id)
    @orders = @articles.map { |article| Order.where(article: article.id) }
    @orders = @orders.flatten
  end

  def orders_sell_confirmed
    # raise
    @order = Order.find(params[:id])
    if @order.confirmed = "confirmed"
      @order.delivered = "delivered"
    else
      @order.confirmed = "confirmed"
    end
    @order.save
    @articles = Article.where(user_id: current_user.id)
    @orders = @articles.map { |article| Order.where(article: article.id) }
    @orders = @orders.flatten
    redirect_to orders_sell_path
  end

  def orders_sell_cancel
    @order = Order.find(params[:id])
    @order.delivered = "cancel"
    @order.confirmed = "cancel"
    @order.save
    @articles = Article.where(user_id: current_user.id)
    @orders = @articles.map { |article| Order.where(article: article.id) }
    @orders = @orders.flatten
    redirect_to orders_sell_path
  end

  private

  def set_article
    @article = Article.find(params[:article_id])
  end

end

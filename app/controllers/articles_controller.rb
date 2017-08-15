class ArticlesController < ApplicationController
  def index
    word_search = params[:q]
    if word_search.nil?
      @articles = Article.all
    else
      @articles = Article.where("title LIKE ?", "%#{word_search}%")
    end
  end

  def show
    set_articles
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    @article.save
    redirect_to article_path(@article)
  end

  private
  def set_articles
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :description, :address, :price)
  end
end

#params[:q]

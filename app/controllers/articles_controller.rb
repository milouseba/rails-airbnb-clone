class ArticlesController < ApplicationController
  def index
    word_search = "weed"
    if word_search.nil?
      @articles = Article.all
    else
      @articles = Article.where("title LIKE ?", "%#{word_search}%")
    end
  end

  def show
    set_articles
  end

  private
  def set_articles
    @article = Article.find(params[:id])
  end
end

#params[:q]

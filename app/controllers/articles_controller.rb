class ArticlesController < ApplicationController
  def index
    word_search = "weed"
    if word_search.nil?
      @articles = Article.all
    else
      @articles = Article.where("title LIKE ?", "%#{word_search}%")
    end
  end
end

class ArticlesController < ApplicationController
  def index
    word_search = params[:q]
    if word_search.nil?
      @articles = Article.all
    else
      @articles = Article.where("title LIKE ?", "%#{word_search}%")
    end
  end
end

#params[:q]

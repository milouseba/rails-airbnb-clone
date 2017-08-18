class ArticlesController < ApplicationController
  def index
    word_search = params[:q]
    if word_search == ""

      @articles = Article.all
    else
      # @articles = Article.where("title LIKE ?", "%#{word_search}%")
      @articles = Article.near("%#{word_search}%", 0.4)
    end


    # Flat.near('Tour Eiffel', 10)
    @hash = Gmaps4rails.build_markers(@articles) do |article, marker|
      marker.lat article.latitude
      marker.lng article.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end

    if Geocoder.search(params[:q]) == []
      @position_depart = {lat: nil, lng: nil}
    else
      @position_depart = {lat: Geocoder.search(params[:q])[0].geometry["location"]["lat"],
                      lng: Geocoder.search(params[:q])[0].geometry["location"]["lng"]}
    end
  end

  def show
    set_article
    @order = Order.new
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

  def edit
    set_article
  end

  def update
    set_article
    if @article.user == current_user
      @article.update(article_params)
      redirect_to article_path(@article)
    else
      redirect_to articles_path
    end
  end

  def destroy
    set_article
    if @article.user == current_user
      @article.delete
      redirect_to articles_path
    else redirect_to article_path(@article)
    end
  end

  private
  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :description, :address, :price, :photo, :photo_cache)
  end
end

#params[:q]

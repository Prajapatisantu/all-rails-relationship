class ArticlesController < ApplicationController
  
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end
  
  def create
    @article = Article.new(connect)
    if @article.save
      redirect_to article_path
    end
  end

  def show
    @data = Article.find(params[:id])
  end

  private
  def connect
    params.require(:article).permit(:title ,:body) 
  end
end

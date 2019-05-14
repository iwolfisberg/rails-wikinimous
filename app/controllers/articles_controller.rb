class ArticlesController < ApplicationController

  before_action :set_articles, only: [:show, :edit, :update, :destroy]
  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_params)
  end

  def edit
  end

  def update
    @article.update(article_params)
  end

  def delete
  end

  private

  def set_articles
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end
end

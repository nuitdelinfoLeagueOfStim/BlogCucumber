class ArticlesController < ApplicationController
  def index 
    respond_to do |format|
      @articles = Article.all
      format.html #new.hmtl.erb
    end
  end
   def show 
    @articles = Article.all
    respond_to do |format|
      format.html #new.hmtl.erb
    end
  end

  def new
     @article = Article.new
  end
  def create
    @article = Article.create!(params[:article])
    flash[:notice] = "New article created."
    redirect_to articles_path
  end
end

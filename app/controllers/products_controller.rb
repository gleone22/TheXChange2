class ProductsController < ApplicationController
  def new
  end

  def show
    @article = Article.find(params[:id])

  def index
    @products = Product.all
  end


  def create
    @product = Product.new(params[:article])

    @product.save
    redirect_to @article
  end

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end

  end
end

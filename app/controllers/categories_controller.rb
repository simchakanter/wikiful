class CategoriesController < ApplicationController
  def index
    @categories = Category.all.order(:name)
  end

  def show
    @category = Category.find(params[:id])
    @category_articles = @category.articles.order(updated_at: :desc)
  end
end
class HomeController < ApplicationController
  def index
    @product = Search::Product.new(search_params)
    @products = @product
      .matches
      .order(available: :desc, code: :asc)
      .decorate
  end

  private

  def search_params
    return unless params[:search_product]
    params
      .require(:search_product)
      .permit(Search::Product::ATTRIBUTES)
  end
end

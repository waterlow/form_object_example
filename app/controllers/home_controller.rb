class HomeController < ApplicationController
  def index
    @search_form = Search::Product.new(search_params)
    @products = @search_form
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

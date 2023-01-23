class ProductsController < ApplicationController
  def index
    @page = params[:page]
    @size = params[:size]
    @query = params[:query]
    @currency = params[:currency]
    @products = Product.all.paginate(page: @page, per_page: @size)
    @products = @products.where("name LIKE ?", "%#{@query}%") if @query.present?
    @products = @products.where("currency = ?", @currency) if @currency.present?

    render json: {
      metadata: {
        page: @page,
        total_records: @products.total_entries
      },
      products: @products
    }
  end

  def show
    @product = Product.find(params[:id])
    render json: {
      product: @product
    }
  end
end

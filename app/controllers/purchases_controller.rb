class PurchasesController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @quantity = params[:quantity]
    @user = User.find(params[:user_id])

    @purchase = Purchase.new(
      quantity: @quantity,
      total_amount: @product.price.to_f * @quantity.to_f,
      currency: @product.currency,
      product_id: @product.id,
      user_id: @user.id
    )

    if @purchase.save
      render json: {
        purchase: @purchase,
        message: "Purchase successful!"
      }, status: :created
    else
      render json: {
        errors: @purchase.errors.full_messages
      }, status: :unprocessable_entity
    end
  end
end

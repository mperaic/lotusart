class PaymentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @product = Product.find(params[:product_id])
    @user = current_user

    token = params[:stripeToken]
    #  this will charge the user's card
    begin
      charge = Stripe::Charge.create(
        amount: @product.price * 100,
        currency: "eur",
        source: token,
        description: params[:stripeEmail],
        receipt_email: params[:stripeEmail]
      )

      if charge.paid
        Order.create(product_id: @product.id, user_id: @user.id, total: @product.price * 100)
      end

    rescue Stripe::CardError => e
      # The card has been declined
      body = e.json_body
      err = body[:error]
      flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}"
    end
    redirect_to product_path(@product)
  end
end

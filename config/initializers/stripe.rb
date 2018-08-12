if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_aNhnbuQYGmnR1QybRijb0npa',
    secret_key: 'sk_test_Zf6lN3V1gtMqt4eDpm2UEGbc'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]

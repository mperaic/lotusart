require 'rails_helper'

describe Comment do
  context "when the product has comments" do
    let(:product) { Product.create!(name: "mandala") }
    let(:user) { User.create!(email: "mperaic@gmail.com", password: "Perazhica")}

  it "is not valid without a body" do
    expect(Comment.new(body: " ")).not_to be_valid
  end

  it "is not valid without a user" do
    expect(Comment.new(body: "nice painting")).not_to be_valid
  end

  it "is not valid without a product" do
    expect(Comment.new(body: "nice painting ")).not_to be_valid
  end

  it "rating has to be an integer" do
      expect(Comment.new(user_id: 1, body:"very nice", rating: "super")).not_to be_valid
    end
  end
end

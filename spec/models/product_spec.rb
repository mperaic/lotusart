require 'rails_helper'

describe Product do
  context "when the product has comments" do
    let(:product) { Product.create!(name: "race bike") }
    let(:user) { User.create!(email: "mperaic@gmail.com", password: "Perazhica")}

  before do
    product.comments.create!(rating: 1, user: user, body: "Awful!")
    product.comments.create!(rating: 3, user: user, body: "Ok!")
    product.comments.create!(rating: 5, user: user, body: "Great!")
  end

  it "returns the average rating of all comments" do
    expect(product.average_rating). to eq 3.0
  end

  it "is not valid without a name" do
    expect(Product.new(description: "Nice painting")).not_to be_valid
  end

  it "returns the lowest rating of all comments" do
      expect(product.lowest_rating_comment). to be_valid
    end

    it "returns the highest rating of all comments" do
      expect(product.highest_rating_comment == 3.0). to be false
    end
  end
end

require 'rails_helper'

describe Comment do
  context "when the product has comments" do
    let(:product) { Product.create!(name: "race bike") }
    let(:user) { User.create!(email: "mperaic@gmail.com", password: "Perazhica")}

  it "is not valid without a body" do
    expect(Comment.new(body: " ")).not_to be_valid
  end
  end
  end

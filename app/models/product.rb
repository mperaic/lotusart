class Product < ApplicationRecord
  has_many :orders
  has_many :comments
  validates :name, presence: true

  def self.search(search_term)
    if Rails.env.development?
      # Dev Mode (sqlite3)
      Product.where("name LIKE ?", "%#{search_term}%")
    else
      # Production or test mode (PostgreSQL)
      Product.where("name ilike ?", "%#{search_term}%")
    end
  end

  def highest_rating_comment
    comments.rating_desc.first
  end

  def lowest_rating_comment
    comments.rating_asc.first
  end

  def average_rating
    comments.average(:rating).to_f
  end
end

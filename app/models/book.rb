class Book < ActiveRecord::Base
  has_many :authors, through: :book_authors
  belongs_to :category
  belongs_to :publisher
  
  validates :title, :price, :publish_date, :isbn, :category, :publisher, presence: true
end

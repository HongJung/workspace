class Author < ActiveRecord::Base
     has_many :books, through: :book_authors
     validates :first_name, :last_name, :genre, :dob, :dod, presence: true
end

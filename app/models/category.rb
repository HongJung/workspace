class Category < ActiveRecord::Base
    validates_presence_of :title
    has_many :books
    def to_s
        self.title
    end
end

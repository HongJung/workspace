class Publisher < ActiveRecord::Base
    validates_presence_of :title, :city, :state
    has_many :books
    def to_s
        self.title
    end
end

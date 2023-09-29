class Book < ApplicationRecord
    validates :title, presence:true
    #belongs_to :author
    #belongs_to :supplier
    #has_and_belongs_to_many :orders
end

class Book < ApplicationRecord
    belongs_to :lib
    #belongs_to :user
    has_many :author_books
    has_many :users, through: :author_books

end

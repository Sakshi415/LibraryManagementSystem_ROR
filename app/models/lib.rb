class Lib < ApplicationRecord
    has_many :books
    belongs_to :user, optional: true

end

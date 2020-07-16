class Post < ApplicationRecord
    belongs_to :client
    belongs_to :category
    has_many :comments
end

class Post < ApplicationRecord
    belongs_to :client
    belongs_to :category
    has_many :comments
    after_validation :set_slug, only: [:create, :update]

    # def to_param
    #     "#{slug}-#{id}"
    # end

    private
    def set_slug
        self.slug = title.to_s.parameterize
    end 
end

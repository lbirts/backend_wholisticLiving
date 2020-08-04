class Category < ApplicationRecord
    has_many :posts
    has_many :providers
    after_validation :set_slug, only: [:create, :update]

    private

    def set_slug
        self.slug = title.parameterize
    end
end

class CategorySerializer < ActiveModel::Serializer
  attributes :id, :slug, :title, :posts, :providers
end

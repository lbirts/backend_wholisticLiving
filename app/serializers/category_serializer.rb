class CategorySerializer < ActiveModel::Serializer
  attributes :id, :title, :posts
end

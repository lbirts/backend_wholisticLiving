class PostSerializer < ActiveModel::Serializer
  attributes :id, :slug, :title, :content, :client, :category, :comments
end

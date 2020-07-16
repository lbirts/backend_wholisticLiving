class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :client, :category, :comments
end

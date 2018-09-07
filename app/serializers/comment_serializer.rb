class CommentSerializer < ActiveModel::Serializer
  attributes :id, :message, :post_id
  belongs_to :post
end

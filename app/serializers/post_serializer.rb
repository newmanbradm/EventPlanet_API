class PostSerializer < ActiveModel::Serializer
  attributes :id, :image_url
  belongs_to :event
  has_many :comments
end

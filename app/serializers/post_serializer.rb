class PostSerializer < ActiveModel::Serializer
  attributes :id, :image_url, :event_id
  belongs_to :event
  has_many :comments
end

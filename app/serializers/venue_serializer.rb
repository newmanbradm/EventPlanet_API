class VenueSerializer < ActiveModel::Serializer
  attributes :id, :image_url, :name, :address
  has_many :event_venues
  has_many :events, through: :event_venues
end

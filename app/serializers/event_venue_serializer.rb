class EventVenueSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :event
  belongs_to :venue
end

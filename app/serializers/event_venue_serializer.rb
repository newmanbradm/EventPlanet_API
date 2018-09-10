class EventVenueSerializer < ActiveModel::Serializer
  attributes :id, :event_id, :venue_id
  belongs_to :event
  belongs_to :venue
end

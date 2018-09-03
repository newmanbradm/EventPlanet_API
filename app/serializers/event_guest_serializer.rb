class EventGuestSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :event
  belongs_to :guest
end

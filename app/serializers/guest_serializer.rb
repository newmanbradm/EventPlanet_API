class GuestSerializer < ActiveModel::Serializer
  attributes :id, :name, :phone_number, :email
  has_many :event_guests
  has_many :events, through: :event_guests
end

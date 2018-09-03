class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :rain_date, :description, :contact_details, :budget
  belongs_to :user
  has_many :posts
  has_many :supplies
  has_many :comments, through: :posts
  has_many :event_venues
  has_many :venues, through: :event_venues
  has_many :event_guests
  has_many :guests, through: :event_guests
end

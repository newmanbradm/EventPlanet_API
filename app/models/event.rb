class Event < ApplicationRecord
  belongs_to :user
  has_many :posts, dependent: :delete_all
  has_many :supplies, dependent: :delete_all
  has_many :comments, through: :posts
  has_many :event_venues, dependent: :delete_all
  has_many :venues, through: :event_venues
  has_many :event_guests, dependent: :delete_all
  has_many :guests, through: :event_guests
end

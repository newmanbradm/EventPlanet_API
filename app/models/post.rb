class Post < ApplicationRecord
  belongs_to :event
  has_many :comments, dependent: :delete_all
end

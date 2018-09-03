class SupplySerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :store_url
  belongs_to :event
end

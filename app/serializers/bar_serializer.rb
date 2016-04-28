class BarSerializer < ActiveModel::Serializer
  attributes :id, :name, :nights, :time, :address, :city, :state, :zip
end

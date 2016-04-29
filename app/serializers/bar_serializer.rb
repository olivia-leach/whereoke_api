class BarSerializer < ActiveModel::Serializer
  attributes :id, :name, :nights, :time, :address, :city, :state, :zip, :reviews, :reviewed_profiles, :fav_profiles
end

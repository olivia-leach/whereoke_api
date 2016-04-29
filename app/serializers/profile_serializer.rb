class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :username, :fav_bars, :reviews, :reviewed_bars
end

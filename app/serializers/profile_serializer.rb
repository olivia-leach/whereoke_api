class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :username, :fav_song, :quote, :pic, :fav_bars, :reviews, :reviewed_bars, :favorites
end

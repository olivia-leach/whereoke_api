class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :profile_id, :bar_id
  has_one :profile
  has_one :bar
end

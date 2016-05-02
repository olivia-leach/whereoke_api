class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :profile_id, :bar, :comment, :rating
  has_one :profile
  has_one :bar
end

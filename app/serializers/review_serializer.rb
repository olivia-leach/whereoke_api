class ReviewSerializer < ActiveModel::Serializer
  attributes :id
  has_one :profile
  has_one :bar
end

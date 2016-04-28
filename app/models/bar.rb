class Bar < ActiveRecord::Base
  has_many :favorites
  has_many :fav_profiles, through: :favorites, source: :profile

  has_many :reviews
  has_many :reviewed_profiles, through: :reviews, source: :profile
end

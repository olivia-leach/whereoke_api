class Bar < ActiveRecord::Base
  has_many :favorites
  has_many :fav_profiles, through: :favorites, source: :profile
end

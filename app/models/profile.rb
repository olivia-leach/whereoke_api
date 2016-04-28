class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :favorites
  has_many :fav_bars, through: :favorites, source: :bar
end

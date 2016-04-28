class Profile < ActiveRecord::Base
  belongs_to :user

  has_many :favorites
  has_many :fav_bars, through: :favorites, source: :bar

  has_many :reviews
  has_many :reviewed_bars, through: :reviews, source: :bar
end

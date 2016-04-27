#
class User < ActiveRecord::Base
  include Authentication
  has_many :favorites
  has_many :bars, through: :favorites
end

class Favorite < ActiveRecord::Base
  belongs_to :user, inverse_of: :favorites
  belongs_to :bar, inverse_of: :favorites
end

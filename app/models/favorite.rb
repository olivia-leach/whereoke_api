class Favorite < ActiveRecord::Base
  belongs_to :profile, inverse_of: :favorites
  belongs_to :bar, inverse_of: :favorites
end

class Review < ActiveRecord::Base
  belongs_to :profile, inverse_of: :reviews
  belongs_to :bar, inverse_of: :reviews
end

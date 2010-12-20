class TypeRoom < ActiveRecord::Base
  has_many   :reservations
end

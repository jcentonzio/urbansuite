class Country < ActiveRecord::Base
  has_many   :reservations
end

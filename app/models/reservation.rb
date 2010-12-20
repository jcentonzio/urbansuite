class Reservation < ActiveRecord::Base
  belongs_to :country,	                        :foreign_key => 'country_id'
  belongs_to :type_room,	                      :foreign_key => 'type_room_id'
end

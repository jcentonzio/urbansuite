class Reservation < ActiveRecord::Base
  belongs_to :country,	                        :foreign_key => 'country_id'
  belongs_to :type_room,	                      :foreign_key => 'type_room_id'
  
  
  validates_presence_of :name
  validates_presence_of :lastname
  validates_presence_of :arrived
  validates_presence_of :output
  validates_presence_of :number_pass
  validates_presence_of :phone
  validates_presence_of :mail   
   
end

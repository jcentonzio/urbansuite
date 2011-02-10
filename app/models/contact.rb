class Contact < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :mail
  validates_presence_of :comment
end

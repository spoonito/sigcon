class Family < ActiveRecord::Base
  
  validates_presence_of :process_number, :family_type, :graffar, :duval
  
  has_many :pacients
  
end

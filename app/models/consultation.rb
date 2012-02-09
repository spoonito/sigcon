class Consultation < ActiveRecord::Base
  
  belongs_to :pacient
  belongs_to :consultation_type
  
end

class Pacient < ActiveRecord::Base
  
  validates_presence_of :name, :gender, :birth, :family
  
  belongs_to :family
  has_many :consultations
  
end

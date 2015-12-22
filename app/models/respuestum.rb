class Respuestum < ActiveRecord::Base
 
  belongs_to :evaluacion
  belongs_to :usuario
  belongs_to :usuario
  has_many :respuestum_preguntums
end

class Preguntum < ActiveRecord::Base
  has_many :opcions
  has_many :encuesta_preguntums
  has_many :respuestum_preguntums
end

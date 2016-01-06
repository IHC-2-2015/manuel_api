class Encuestum < ActiveRecord::Base
  has_many :encuesta_preguntums
  has_many :evaluaciones
  belongs_to :tipo_encuestum
  has_many :encuesta_alumnos
  belongs_to :profesor, class_name: 'Profesore'
end

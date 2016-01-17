class Encuestum < ActiveRecord::Base
  has_many :_preguntas, class_name: "EncuestaPreguntum", foreign_key: "encuesta_id"
  has_many :preguntas, through: :_preguntas, source: :pregunta
  has_many :evaluaciones
  belongs_to :tipo_encuestum
  has_many :encuesta_alumnos
  belongs_to :profesor, class_name: 'Profesore'
end

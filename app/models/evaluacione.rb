class Evaluacione < ActiveRecord::Base
  has_many :respuestas, class_name: 'Respuestum', foreign_key: 'evaluacion_id'
  belongs_to :curso
  belongs_to :encuesta, class_name: 'Encuestum', foreign_key: 'encuesta_id'

  validates :nombre, presence: true

  before_create -> {self.nombre = self.encuesta.nombre + ' - ' + self.nombre}
end

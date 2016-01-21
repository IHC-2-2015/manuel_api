class Evaluacione < ActiveRecord::Base
  has_many :respuestas, class_name: 'Respuestum', foreign_key: 'evaluacion_id'
  belongs_to :curso
  belongs_to :encuesta, class_name: 'Encuestum', foreign_key: 'encuesta_id'

  validates :nombre, presence: true

  before_create -> {self.nombre = self.encuesta.nombre + ' - ' + self.nombre}

  after_create :crear_respuestas


  private
  def crear_respuestas
  	Evaluacione.transaction do
  		curso= Curso.where(id: self.curso.id)
  		curso.each do |c|
  			grupo = Grupo.where(curso_id: c.id)
  			grupo.each do |g|
  				
  			end
  		end
  	end
  	
  end
end

class Evaluacione < ActiveRecord::Base
	has_many :respuestas
	belongs_to :curso
	belongs_to :encuesta
end

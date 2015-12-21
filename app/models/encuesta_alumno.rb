class EncuestaAlumno < ActiveRecord::Base
	belongs_to :encuestum
	belongs_to :alumno
end

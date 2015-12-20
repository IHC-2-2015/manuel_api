class GrupoAlumno < ActiveRecord::Base
	belongs_to :alumno
	belongs_to :grupo
end

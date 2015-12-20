class Usuario < ActiveRecord::Base
	has_many :cursos
	has_many :respuestas
	has_many :respuestas
	has_many :grupos
	has_many :curso_alumnos
end

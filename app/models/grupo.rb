class Grupo < ActiveRecord::Base
  has_many :grupo_alumnos, class_name: 'GrupoAlumno'
  has_many :integrantes,
    through: :grupo_alumnos,
    source: :alumno
  belongs_to :jefe_grupo, class_name: 'Alumno', foreign_key: 'alumno_id'
  belongs_to :curso
end

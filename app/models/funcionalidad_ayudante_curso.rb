class FuncionalidadAyudanteCurso < ActiveRecord::Base
  belongs_to :curso
  belongs_to :alumno, class_name: "Alumno"
  belongs_to :funcionalidad, class_name: "Funcionalidad"
end

class FuncionalidadAyudanteCurso < ActiveRecord::Base
  belongs_to :curso_alumno
  belongs_to :funcionalidad, class_name: "Funcionalidad" 
end

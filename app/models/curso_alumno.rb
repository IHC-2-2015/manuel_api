class CursoAlumno < ActiveRecord::Base
  belongs_to :grupo
  belongs_to :curso
  belongs_to :alumno, class_name: 'Alumno'
  has_many :funcionalidades, class_name: 'FuncionalidadAyudanteCurso'

  def crear_funcionalidades
    begin
      CursoAlumno.transaction do 
        func = Funcionalidad.all

        func.each do |f|
          self.funcionalidades.create(
            permitido: false,
            funcionalidad_id: f.id
          )
        end 
      end
    rescue => e
      raise ActiveRecord::Rollback
    end
  end

  def eliminar_funcionalidades
    self.funcionalidades.destroy_all
  end
end

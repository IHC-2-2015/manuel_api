class CursoAlumno < ActiveRecord::Base
  belongs_to :curso
  belongs_to :alumno, class_name: 'Alumno'

  after_create -> {self.ayudante = false}
  after_update :setear_funcionalidades

  private
    def setear_funcionalidades
      if self.ayudante_changed? and self.ayudante
        crear_funcionalidades
      elsif self.ayudante_changed?
        eliminar_funcionalidades
      end
    end

    def crear_funcionalidades
      begin
        CursoAlumno.transaction do
          func = Funcionalidad.all

          func.each do |f|
            FuncionalidadAyudanteCurso.create(
              funcionalidad: f,
              curso: self.curso,
              alumno: self.alumno,
              permitido: false
            )
          end
        end
      rescue => e
        raise ActiveRecord::Rollback
      end
    end

    def eliminar_funcionalidades
      FuncionalidadAyudanteCurso.where(
        curso_id: self.curso.id,
        alumno_id: self.alumno.id
      ).destroy_all
    end
end

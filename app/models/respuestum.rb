class Respuestum < ActiveRecord::Base

  belongs_to :evaluacion, class_name: "Evaluacione", foreign_key: "evaluacion_id"
  belongs_to :encuestador, class_name: "Usuario", foreign_key: "encuestador_id"
  belongs_to :encuestado, class_name: "Usuario", foreign_key: "encuestado_id"
  belongs_to :grupo
  has_many :respuestum_preguntums

  #after_create :setear_grupo_id
  #after_update :cambiar_estado_evaluacion
  private
    def setear_grupo_id
      curso = self.evaluacion.curso
      grupos = curso.grupos
      alumno = Alumno.find_by_usuario_id encuestado.id

      grupos.each do |g|
        if g.integrantes.find_by_id(alumno.id) != nil
          self.grupo = g
          break
        end
      end
    end

    def cambiar_estado_evaluacion
      contador = 0
      grupo_alumno = GrupoAlumno.where(grupo_id: grupo.id).count
      if self.respondida_changed?
        respuesta = Respuestum.where(encuestador_id: encuestador.id, evaluacion_id: evaluacion.id)
        respuesta.each do |r|
          if r.respondida == true
             contador = contador +1
          end
        end
      end
      if contador == grupo_alumno
        evaluaciones = Evaluacione.where(id: evaluacion.id)
        evaluaciones.contestada = true
        evaluaciones.save
      end
    end
end

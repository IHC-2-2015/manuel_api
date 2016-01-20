class Respuestum < ActiveRecord::Base

  belongs_to :evaluacion, class_name: "Evaluacione", foreign_key: "evaluacion_id"
  belongs_to :encuestador, class_name: "Usuario", foreign_key: "encuestador_id"
  belongs_to :encuestado, class_name: "Usuario", foreign_key: "encuestado_id"
  belongs_to :grupo
  has_many :respuestum_preguntums

  after_create :setear_grupo_id

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
end

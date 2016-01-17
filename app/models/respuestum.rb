class Respuestum < ActiveRecord::Base
 
  belongs_to :evaluacion
  belongs_to :encuestador, class_name: "Usuario", foreign_key: "encuestador_id"
  belongs_to :encuestado, class_name: "Usuario", foreign_key: "encuestado_id"
  has_many :respuestum_preguntums
end

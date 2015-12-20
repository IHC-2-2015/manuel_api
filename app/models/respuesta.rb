class Respuesta < ActiveRecord::Base
  self.table_name = "respuestas"

  belongs_to :evaluacione
  belongs_to :usuario
  belongs_to :usuario
end

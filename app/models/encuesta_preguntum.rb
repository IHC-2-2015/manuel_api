class EncuestaPreguntum < ActiveRecord::Base
  belongs_to :encuestum
  belongs_to :pregunta, class_name: "Preguntum", foreign_key: "pregunta_id"
end

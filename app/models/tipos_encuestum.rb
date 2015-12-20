class TiposEncuestum < ActiveRecord::Base
self.table_name = "tipos_encuesta"

  has_many :encuestas
end

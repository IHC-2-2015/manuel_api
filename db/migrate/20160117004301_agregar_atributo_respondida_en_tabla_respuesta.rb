class AgregarAtributoRespondidaEnTablaRespuesta < ActiveRecord::Migration
  def change
  	add_column  :respuesta, :respondida, :boolean 
  end
end

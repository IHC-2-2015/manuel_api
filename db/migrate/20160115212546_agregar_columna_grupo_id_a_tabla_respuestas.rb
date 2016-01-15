class AgregarColumnaGrupoIdATablaRespuestas < ActiveRecord::Migration
  def change
  	add_column :respuesta, :grupo_id, :integer
  end
end

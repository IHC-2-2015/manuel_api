class ModificarTipoColumnaContestada < ActiveRecord::Migration
  def change
  	remove_column :evaluaciones,:contestada
  	add_column :evaluaciones, :contestada, :boolean 
  end
end

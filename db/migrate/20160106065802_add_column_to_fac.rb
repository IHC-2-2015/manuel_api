class AddColumnToFac < ActiveRecord::Migration
  def change
    add_column :funcionalidad_ayudante_cursos, :permitido, :boolean
  end
end

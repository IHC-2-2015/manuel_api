class AddEstadoToAlumnos < ActiveRecord::Migration
  def change
    add_column :alumnos, :estado, :boolean
  end
end

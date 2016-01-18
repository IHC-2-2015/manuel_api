class AddColumnNombreToEvaluacion < ActiveRecord::Migration
  def change
    add_column :evaluaciones, :nombre, :string
  end
end

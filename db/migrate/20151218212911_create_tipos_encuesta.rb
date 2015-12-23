class CreateTiposEncuesta < ActiveRecord::Migration
  def change
    create_table :tipos_encuesta do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps null: false
    end
  end
end

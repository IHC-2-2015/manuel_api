class CreateGrupos < ActiveRecord::Migration
  def change
    create_table :grupos do |t|
      t.string :nombre
      t.integer :curso_id
      t.text :descripcion

      t.timestamps null: false
    end
  end
end

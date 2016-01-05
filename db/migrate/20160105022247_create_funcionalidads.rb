class CreateFuncionalidads < ActiveRecord::Migration
  def change
    create_table :funcionalidads do |t|
      t.text :descripcion

      t.timestamps null: false
    end
  end
end

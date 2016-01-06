class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.integer :profesor_id
      t.string :nombre
      t.integer :semestre
      t.integer :año
      t.text :descripcion
      t.integer :id_unico
      t.boolean :estado

      t.timestamps null: false
    end
  end
end

class CreateGrupoAlumnos < ActiveRecord::Migration
  def change
    create_table :grupo_alumnos do |t|
      t.integer :alumno_id
      t.integer :grupo_id
      t.boolean :jefe

      t.timestamps null: false
    end
  end
end

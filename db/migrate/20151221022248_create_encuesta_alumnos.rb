class CreateEncuestaAlumnos < ActiveRecord::Migration
  def change
    create_table :encuesta_alumnos do |t|
      t.boolean :estado
      t.integer :alumno_id
      t.integer :encuesta_id

      t.timestamps null: false
    end
  end
end

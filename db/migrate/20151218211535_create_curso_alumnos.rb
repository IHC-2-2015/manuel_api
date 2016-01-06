class CreateCursoAlumnos < ActiveRecord::Migration
  def change
    create_table :curso_alumnos do |t|
      t.integer :curso_id
      t.integer :alumno_id
      t.boolean :ayudante
      t.boolean :estado

      t.timestamps null: false
    end
  end
end

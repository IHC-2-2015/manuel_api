class CreateFuncionalidadAyudanteCursos < ActiveRecord::Migration
  def change
    create_table :funcionalidad_ayudante_cursos do |t|
      t.integer :curso_alumno_id
      t.integer :funcionalidad_id

      t.timestamps null: false
    end
  end
end

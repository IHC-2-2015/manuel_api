class CorregirRelacionesFac < ActiveRecord::Migration
  def up
    rename_column :funcionalidad_ayudante_cursos, :curso_alumno_id, :curso_id
    change_column_null :funcionalidad_ayudante_cursos, :curso_id, false

    add_column :funcionalidad_ayudante_cursos, :alumno_id, :integer
  end

  def down
    rename_column :funcionalidad_ayudante_cursos, :curso_id, :curso_alumno_id
    change_column_null :funcionalidad_ayudante_cursos, :curso_id, true

    remove_column :funcionalidad_ayudante_cursos, :alumno_id
  end
end

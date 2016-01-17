class AddJefeProyectoToCursoAlumnos < ActiveRecord::Migration
  def change
    add_column :curso_alumnos, :jefe_proyecto, :boolean
  end
end

class CambiarAtributoEnCursos < ActiveRecord::Migration
  def change
    rename_column :cursos, :año, :ano
  end
end

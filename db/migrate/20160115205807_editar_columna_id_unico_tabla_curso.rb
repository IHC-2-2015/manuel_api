class EditarColumnaIdUnicoTablaCurso < ActiveRecord::Migration
  def change
    change_column :cursos, :id_unico, :string
  end
end

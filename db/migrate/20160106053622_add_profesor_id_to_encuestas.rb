class AddProfesorIdToEncuestas < ActiveRecord::Migration
  def change
    add_column :encuesta, :profesor_id, :integer
  end
end

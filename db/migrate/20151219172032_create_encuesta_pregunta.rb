class CreateEncuestaPregunta < ActiveRecord::Migration
  def change
    create_table :encuesta_pregunta do |t|
      t.integer :encuesta_id
      t.integer :pregunta_id

      t.timestamps null: false
    end
  end
end

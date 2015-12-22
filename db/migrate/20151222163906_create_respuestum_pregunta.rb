class CreateRespuestumPregunta < ActiveRecord::Migration
  def change
    create_table :respuestum_pregunta do |t|
      t.integer :respuesta_id
      t.integer :pregunta_id
      t.integer :valor_opcion

      t.timestamps null: false
    end
  end
end

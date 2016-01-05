class CreateRespuesta < ActiveRecord::Migration
  def change
    create_table :respuesta do |t|
      t.integer :encuestado_id
      t.integer :encuestador_id
      t.integer :evaluacion_id

      t.timestamps null: false
    end
  end
end

json.array!(@tipos_encuesta) do |tipos_encuestum|
  json.extract! tipos_encuestum, :id, :nombre, :descripcion
  json.url tipos_encuestum_url(tipos_encuestum, format: :json)
end

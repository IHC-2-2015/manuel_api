json.array!(@respuesta) do |respuestum|
  json.extract! respuestum, :id, :encuestado_id, :encuestador_id, :evaluacion_id
  json.url respuestum_url(respuestum, format: :json)
end

json.array!(@respuestum_pregunta) do |respuestum_preguntum|
  json.extract! respuestum_preguntum, :id, :respuesta_id, :pregunta_id, :valor_opcion
  json.url respuestum_preguntum_url(respuestum_preguntum, format: :json)
end

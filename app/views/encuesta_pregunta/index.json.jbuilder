json.array!(@encuesta_pregunta) do |encuesta_preguntum|
  json.extract! encuesta_preguntum, :id, :encuesta_id, :pregunta_id
  json.url encuesta_preguntum_url(encuesta_preguntum, format: :json)
end

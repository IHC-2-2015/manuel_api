json.array!(@encuesta_alumnos) do |encuesta_alumno|
  json.extract! encuesta_alumno, :id, :estado, :alumno_id, :encuesta_id
  json.url encuesta_alumno_url(encuesta_alumno, format: :json)
end

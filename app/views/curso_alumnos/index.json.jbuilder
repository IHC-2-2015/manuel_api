json.array!(@curso_alumnos) do |curso_alumno|
  json.extract! curso_alumno, :id, :curso_id, :alumno_id, :ayudante, :estado, :jefe_proyecto
  json.url curso_alumno_url(curso_alumno, format: :json)
end

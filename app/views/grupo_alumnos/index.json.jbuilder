json.array!(@grupo_alumnos) do |grupo_alumno|
  json.extract! grupo_alumno, :id, :alumno_id, :grupo_id, :jefe
  json.url grupo_alumno_url(grupo_alumno, format: :json)
end

json.array!(@alumnos) do |alumno|
  json.extract! alumno, :id, :rut, :nombre, :apellido_paterno, :apellido_materno, :correo, :usuario_id
  json.url alumno_url(alumno, format: :json)
end

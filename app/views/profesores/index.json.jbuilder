json.array!(@profesores) do |profesore|
  json.extract! profesore, :id, :rut, :nombre, :apellido_paterno, :apellido_materno, :correo, :descripcion, :usuario_id
  json.url profesore_url(profesore, format: :json)
end
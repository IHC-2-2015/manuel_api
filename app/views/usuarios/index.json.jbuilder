json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :rut, :nombre, :apellido_paterno, :apellido_materno, :correo, :rol, :estado
  json.url usuario_url(usuario, format: :json)
end

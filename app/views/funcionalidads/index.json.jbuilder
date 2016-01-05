json.array!(@funcionalidads) do |funcionalidad|
  json.extract! funcionalidad, :id, :descripcion
  json.url funcionalidad_url(funcionalidad, format: :json)
end

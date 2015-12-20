json.array!(@grupos) do |grupo|
  json.extract! grupo, :id, :nombre, :curso_id, :descripcion
  json.url grupo_url(grupo, format: :json)
end

json.array!(@cursos) do |curso|
  json.extract! curso, :id, :profesor_id, :nombre, :semestre, :descripcion, :ano, :id_unico, :estado
  json.url curso_url(curso, format: :json)
end

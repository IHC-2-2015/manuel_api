json.array!(@cursos) do |curso|
  json.extract! curso, :id, :profesor_id, :nombre, :semestre, :año, :descripcion
  json.url curso_url(curso, format: :json)
end

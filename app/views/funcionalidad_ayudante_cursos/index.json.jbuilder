json.array!(@funcionalidad_ayudante_cursos) do |funcionalidad_ayudante_curso|
  json.extract! funcionalidad_ayudante_curso, :id, :curso_alumno_id, :funcionalidad_id
  json.url funcionalidad_ayudante_curso_url(funcionalidad_ayudante_curso, format: :json)
end

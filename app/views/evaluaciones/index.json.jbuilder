json.array!(@evaluaciones) do |evaluacione|
  json.extract! evaluacione, :id, :contestada, :curso_id, :encuesta_id, :nombre
  json.url evaluacione_url(evaluacione, format: :json)
end

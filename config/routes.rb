Rails.application.routes.draw do
  resources :funcionalidads
  resources :funcionalidad_ayudante_cursos
  resources :respuestum_pregunta
  resources :encuesta_alumnos
  resources :grupo_alumnos
  resources :respuesta
  resources :encuesta_pregunta
  resources :pregunta
  resources :encuesta
  resources :usuarios
  resources :tipos_encuesta
  resources :respuesta
  resources :profesores
  resources :pregunta
  resources :opciones
  resources :grupos
  resources :evaluaciones
  resources :cursos
  resources :curso_alumnos
  resources :alumnos
  get '/buscar_por_correo', to:'usuarios#buscar_por_correo'
  get '/buscar_por_rol', to:'usuarios#buscar_por_rol'
  get '/buscar_por_grupo', to:'grupo_alumnos#buscar_por_grupo'
  get '/buscar_no_evaluados', to: 'grupo_alumnos#buscar_no_evaluados'
  get '/grupos_alumno', to:'alumnos#grupos_alumno'
  get '/cursos_profesor', to: 'cursos#cursos_profesor'
  get '/cursos_alumno', to: 'cursos#cursos_alumno'
  get '/mostrar_cursos', to: 'cursos#mostrar_cursos'
  get '/preguntas_encuesta', to: 'encuesta_pregunta#preguntas_encuesta'
  get '/preguntas_encuesta_opciones', to: 'encuesta_pregunta#preguntas_encuesta_opciones'
  get '/mostrar_encuestas', to: 'encuesta#mostrar_encuestas'
  get '/encuestas_profesor', to: 'encuesta#encuestas_profesor'
  get '/encuestas_por_tipo', to: 'encuesta#encuestas_por_tipo'
  get '/mostrar_tipos_encuestas', to: 'tipos_encuesta#mostrar_tipos_encuestas'
  get '/buscar_alumnos_curso', to: 'curso_alumnos#buscar_alumnos_curso'
  get '/buscar_pendientes_alumno', to: 'respuesta#buscar_pendientes_alumno'
  get '/buscar_encuestas_alumno', to: 'respuesta#buscar_encuestas_alumno'
  get '/grupo_encuesta_pendiente', to: 'encuesta_alumnos#grupo_encuesta_pendiente'
  get '/grupo_encuesta', to: 'encuesta_alumnos#grupo_encuesta'
  get '/grupos_jefe', to: 'grupo_alumnos#grupos_jefe'
  get '/encuestas_jefe', to: 'grupo_alumnos#encuestas_jefe'
  get '/incompletas_grupo', to: 'encuesta_alumnos#incompletas_grupo'
  get '/mostrar_grupos', to: 'grupos#mostrar_grupos'
  get '/grupos_curso', to: 'grupos#grupos_curso'
  get '/evaluaciones_curso', to: 'evaluaciones#evaluaciones_curso'
  get '/total_encuestas', to: 'evaluaciones#total_encuestas'
  get '/ayudante_curso', to: 'curso_alumnos#ayudante_curso'
  get '/datos_ayudante', to: 'curso_alumnos#datos_ayudante'
  get '/datos_jefe', to: 'grupo_alumnos#datos_jefe'
  get '/evaluaciones_curso_encuesta', to: 'evaluaciones#evaluaciones_curso_encuesta'
  get '/datos_alumno', to: 'alumnos#datos_alumno'
  get '/contar_funcionalidades', to: 'funcionalidad_ayudante_cursos#contar_funcionalidades'
  get '/datos_tipo_encuesta', to: 'tipos_encuesta#datos_tipo_encuesta'
  get '/listar_funcionalidades', to: 'funcionalidads#listar_funcionalidades'
  get '/listar_func_ayu', to: 'funcionalidad_ayudante_cursos#listar_func_ayu'
  get '/jefe_proyecto', to: 'curso_alumnos#jefe_proyecto'
  get '/entregar_respuesta', to: 'respuesta#entregar_respuesta'

  post '/guardar_respuesta', to: 'respuesta#guardar_respuesta'
  post '/funcionalidad_ayudante', to: 'funcionalidad_ayudante_cursos#funcionalidad_ayudante'
 

  put '/es_jefe', to: 'grupo_alumnos#es_jefe'
  put '/es_ayudante', to: 'curso_alumnos#es_ayudante'
  put '/actualizar_encuesta', to: 'encuesta_alumnos#actualizar_encuesta'
  put '/actualizar_alumno', to: 'alumnos#actualizar_alumno'
  put '/actualizar_profesor', to: 'profesores#actualizar_profesor'

  delete '/borrar_alumno', to: 'grupo_alumnos#borrar_alumno'
  delete '/borrar_alumno_curso', to: 'curso_alumnos#borrar_alumno_curso'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end

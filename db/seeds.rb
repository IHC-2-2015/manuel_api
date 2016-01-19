# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Usuario.create(rut: 181895683, nombre: 'Francisco', apellido_paterno: 'Avello', apellido_materno: 'Barrera', correo: 'francisco.avello@usach.cl', rol: 2 )
Usuario.create(rut: 222333445, nombre: 'Juan', apellido_paterno: 'Perez', apellido_materno: 'Cabral', correo: 'sdsd.sd@usach.cl', rol: 2 )
Usuario.create(rut: 551122887, nombre: 'Ricardo', apellido_paterno: 'Paredes', apellido_materno: 'Rodriguez', correo: 'asdaxcx.xzv@usach.cl', rol: 2 )
Usuario.create(rut: 524777888, nombre: 'Sandra', apellido_paterno: 'Bascur', apellido_materno: 'Tirado', correo: 'ew.zxv@usach.cl', rol: 2 )
Usuario.create(rut: 458786422, nombre: 'Carolina', apellido_paterno: 'Diaz', apellido_materno: 'Aguilera', correo: 'fsdfsfd.vzvwd@usach.cl', rol: 1 )
Usuario.create(rut: 25545877, nombre: 'Esteban', apellido_paterno: 'Bello', apellido_materno: 'Montenegro', correo: 'ewre.ghgf@usach.cl', rol: 1 )
Usuario.create(rut: 180729348, nombre: 'Camila', apellido_paterno: 'Marín', apellido_materno: 'González', correo: 'camila.marin@usach.cl', rol: 0 )
Usuario.create(rut: 177087866, nombre: 'Claudia', apellido_paterno: 'Guzmán', apellido_materno: 'Silva', correo: 'claudia.guzmans@usach.cl', rol: 2 )

Alumno.create(rut: 181895683, nombre: 'Francisco', apellido_paterno: 'Avello', apellido_materno: 'Barrera', correo: 'francisco.avello@usach.cl', usuario_id: 1)
Alumno.create(rut: 222333445, nombre: 'Juan', apellido_paterno: 'Perez', apellido_materno: 'Cabral', correo: 'sdsd.sd@usach.cl', usuario_id: 2 )
Alumno.create(rut: 551122887, nombre: 'Ricardo', apellido_paterno: 'Paredes', apellido_materno: 'Rodriguez', correo: 'asdaxcx.xzv@usach.cl', usuario_id: 3 )
Alumno.create(rut: 524777888, nombre: 'Sandra', apellido_paterno: 'Bascur', apellido_materno: 'Tirado', correo: 'ew.zxv@usach.cl', usuario_id: 4 )
Alumno.create(rut: 177087866, nombre: 'Claudia', apellido_paterno: 'Guzmán', apellido_materno: 'Silva', correo: 'claudia.guzmans@usach.cl', usuario_id: 5 )

Profesore.create(rut: 458786422, nombre: 'Carolina', apellido_paterno: 'Diaz', apellido_materno: 'Aguilera', correo: 'fsdfsfd.vzvwd@usach.cl', descripcion: 'eso', usuario_id: 5 )
Profesore.create(rut: 25545877, nombre: 'Esteban', apellido_paterno: 'Bello', apellido_materno: 'Montenegro', correo: 'ewre.ghgf@usach.cl', descripcion: 'eso22', usuario_id: 6 )

Curso.create(profesor_id: 1, nombre: 'IHC', semestre: 2, ano:2015, descripcion: 'Curso IHC Edmundo Leiva')
Curso.create(profesor_id: 2, nombre: 'Pingeso', semestre: 2, ano:2015, descripcion: 'Curso PINGESO 2/2015' )
Curso.create(profesor_id: 1, nombre: 'CYS', semestre: 2, ano:2015, descripcion: 'Curso CyS' )

CursoAlumno.create(curso_id:1, alumno_id:1)
CursoAlumno.create(curso_id:1, alumno_id:2)
CursoAlumno.create(curso_id:1, alumno_id:3)
CursoAlumno.create(curso_id:2, alumno_id:2)
CursoAlumno.create(curso_id:2, alumno_id:1)
CursoAlumno.create(curso_id:2, alumno_id:4)
CursoAlumno.create(curso_id:2, alumno_id:3)
CursoAlumno.create(curso_id:3, alumno_id:1)
CursoAlumno.create(curso_id:3, alumno_id:4)

Grupo.create(nombre: 'Grupo 1', curso_id: 1, descripcion: 'Eso po')
Grupo.create(nombre: 'Grupo 2', curso_id: 1, descripcion: 'dsfd po')
Grupo.create(nombre: 'Grupo 3', curso_id: 1, descripcion: 'Efsso sdf')
Grupo.create(nombre: 'Grupo 1', curso_id: 2, descripcion: 'sdfsfd')
Grupo.create(nombre: 'Grupo 1', curso_id: 3, descripcion: 'dsfsg')
Grupo.create(nombre: 'Grupo 2', curso_id: 3, descripcion: 'gsdgsg')

GrupoAlumno.create(alumno_id: 1 , grupo_id:1)
GrupoAlumno.create(alumno_id: 2 , grupo_id:1)
GrupoAlumno.create(alumno_id: 3 , grupo_id:2)
GrupoAlumno.create(alumno_id: 4 , grupo_id:3)
GrupoAlumno.create(alumno_id: 1 , grupo_id:4)
GrupoAlumno.create(alumno_id: 2 , grupo_id:4)
GrupoAlumno.create(alumno_id: 3 , grupo_id:4)
GrupoAlumno.create(alumno_id: 4 , grupo_id:4)
GrupoAlumno.create(alumno_id: 1 , grupo_id:5)
GrupoAlumno.create(alumno_id: 3 , grupo_id:5)
GrupoAlumno.create(alumno_id: 2 , grupo_id:6)

TiposEncuestum.create(nombre: 'Encuesta 360', descripcion: 'Descripcion de la encuesta 360')
TiposEncuestum.create(nombre: 'Encuesta Liderazgo', descripcion: 'Descripcion de la encuesta de Liderazgo')

enc_360 = Encuestum.create(estado: true,
                 nombre: 'Encuesta 360',
                 descripcion: 'Encuesta para evaluar el trabajo que han realizado los compañeros de trabajo',
                 tipo_encuesta_id: 1)
enc_lid = Encuestum.create(estado: true,
                 nombre: 'Encuesta Liderazgo',
                 descripcion: 'Encuesta para evaluar el trabajo del jefe de grupo, de proyecto, o la persona que lidere el grupo de trabajo',
                 tipo_encuesta_id: 2)

Preguntum.create(enunciado: '¿Como se llama?')
Preguntum.create(enunciado: '¿Como me llamo?')
Preguntum.create(enunciado: '¿Como se llaman?')

EncuestaPreguntum.create(encuesta_id: 1, pregunta_id: 1)
EncuestaPreguntum.create(encuesta_id: 1, pregunta_id: 2)
EncuestaPreguntum.create(encuesta_id: 1, pregunta_id: 3)
EncuestaPreguntum.create(encuesta_id: 2, pregunta_id: 1)
EncuestaPreguntum.create(encuesta_id: 2, pregunta_id: 3)
EncuestaPreguntum.create(encuesta_id: 3, pregunta_id: 2)
EncuestaPreguntum.create(encuesta_id: 3, pregunta_id: 3)
EncuestaPreguntum.create(encuesta_id: 4, pregunta_id: 2)
EncuestaPreguntum.create(encuesta_id: 4, pregunta_id: 3)
EncuestaPreguntum.create(encuesta_id: 4, pregunta_id: 4)

Evaluacione.create(contestada: true, nombre: 'Sprint 1', curso_id:1, encuesta: enc_360)
Evaluacione.create(contestada: false, nombre: 'Sprint 2', curso_id:1, encuesta: enc_lid)

Respuestum.create(encuestado_id: 1,encuestador_id: 2, evaluacion_id: 1)
Respuestum.create(encuestado_id: 3,encuestador_id: 2, evaluacion_id: 1)
Respuestum.create(encuestado_id: 4,encuestador_id: 2, evaluacion_id: 1)

RespuestumPreguntum.create(respuesta_id: 1,pregunta_id: 1, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: 1,pregunta_id: 2, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: 1,pregunta_id: 3, valor_opcion: 0)
RespuestumPreguntum.create(respuesta_id: 2,pregunta_id: 1, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: 2,pregunta_id: 2, valor_opcion: 0)
RespuestumPreguntum.create(respuesta_id: 2,pregunta_id: 3, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: 3,pregunta_id: 1, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: 3,pregunta_id: 2, valor_opcion: 1)
RespuestumPreguntum.create(respuesta_id: 3,pregunta_id: 3, valor_opcion: 3)

Opcione.create( valor: 0 , opcion_text: 'sdfs',pregunta_id: 1 )
Opcione.create( valor: 1 , opcion_text: 'dfsfsa',pregunta_id: 1 )
Opcione.create( valor: 2 , opcion_text: '34rr',pregunta_id: 1 )
Opcione.create( valor: 3 , opcion_text: 'nvcc',pregunta_id: 1 )

Opcione.create( valor: 0 , opcion_text: 'Eso',pregunta_id: 2 )
Opcione.create( valor: 1 , opcion_text: 'Copenhagen',pregunta_id: 2 )
Opcione.create( valor: 2 , opcion_text: 'Copsdsdagen',pregunta_id: 2 )
Opcione.create( valor: 3 , opcion_text: 'SWdqwgen',pregunta_id: 2 )

Opcione.create( valor: 0 , opcion_text: 'dfdsfs',pregunta_id: 3 )
Opcione.create( valor: 1 , opcion_text: 'nbvr',pregunta_id: 3 )
Opcione.create( valor: 2 , opcion_text: 'ytgh',pregunta_id: 3 )
Opcione.create( valor: 3 , opcion_text: 'sadwqqn',pregunta_id: 3 )

EncuestaAlumno.create(estado: true, alumno_id: 1, encuesta_id:1)
EncuestaAlumno.create(estado: true, alumno_id: 2, encuesta_id:3)
EncuestaAlumno.create(estado: false, alumno_id: 3, encuesta_id:2)
EncuestaAlumno.create(estado: false, alumno_id: 4, encuesta_id:1)
EncuestaAlumno.create(estado: true, alumno_id: 1, encuesta_id:2)
EncuestaAlumno.create(estado: false, alumno_id: 1, encuesta_id:3)
EncuestaAlumno.create(estado: false, alumno_id: 1, encuesta_id:4)
EncuestaAlumno.create(estado: false, alumno_id: 3, encuesta_id:1)

Funcionalidad.create(descripcion:"Agregar alumnos al curso")
Funcionalidad.create(descripcion: "Ver las encuestas asociadas a un curso")
Funcionalidad.create(descripcion:"Modificar enunciados de las encuestas")
Funcionalidad.create(descripcion:"Asignar al curso una instancia de encuesta")
Funcionalidad.create(descripcion:"Crear un grupo")
Funcionalidad.create(descripcion:"Editar perfil de un curso")
Funcionalidad.create(descripcion:"Eliminar un alumno de un grupo")
Funcionalidad.create(descripcion:"Eliminar un grupo")
Funcionalidad.create(descripcion:"Asignar alumnos a un grupo")
Funcionalidad.create(descripcion:"Ver encuestas que he modificado")
Funcionalidad.create(descripcion:"Crear nuevos alumnos en el curso")
Funcionalidad.create(descripcion:"Revisar alumnos que han respondido una encuesta")
Funcionalidad.create(descripcion:"Revisar alumnos que no han respondido una encuesta")
Funcionalidad.create(descripcion:"Asignar jefe de grupo")
Funcionalidad.create(descripcion:"Revisar resultados de las encuestas contestadas por el curso")

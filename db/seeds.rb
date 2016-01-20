# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

###################
# ADMINISTRADORES #
###################
Usuario.create(rut: 179582287, nombre:	'Carolina', apellido_paterno: 'Vasquez', apellido_materno:	'Honorato', correo:	'carolina.vasquez@usach.cl', rol: 0, estado: true)
Usuario.create(rut: 181159049, nombre: 'Pablo',	apellido_paterno: 'Salinas', apellido_materno: 'Morales', correo: 'pablo.salinas@usach.cl', rol: 0, estado: true)
Usuario.create(rut: 181207981, nombre:	'Sergio', apellido_paterno:	'Medina', apellido_materno:	'Medel', correo: 'sergio.medina@usach.cl', rol:	0, estado: true)
Usuario.create(rut: 180729348, nombre:	'Camila', apellido_paterno:	'Marín', apellido_materno:	'González', correo:	'camila.marin@usach.cl', rol: 0, estado: true)
Usuario.create(rut: '6838172K', nombre:	'Edmundo',apellido_paterno:	'leiva',apellido_materno:	'leiva', correo: 'directormanuelapp@gmail.com', rol: 0, estado: true)	

##############
# PROFESORES #
##############
pro1 = Usuario.create(rut: '17832733k', nombre: 'Ian', apellido_paterno:	'Mejias', apellido_materno:	'Conejeros', correo: 'ian.mejias@usach.cl', rol: 1, estado: true)
pro2 = Usuario.create(rut: 176814063, nombre:	'Claudia',apellido_paterno:	'Pérez',apellido_materno:	'Ormeño', correo:	'claudia.perozo@usach.cl', rol:	1, estado: true)
pro3 = Usuario.create(rut: 184553740, nombre: 'Pablo',	apellido_paterno: 'Salinas',apellido_materno:	'Cabañas', correo:	'pablo.salinasc@usach.cl', rol:	1, estado: true)
pro4 = Usuario.create(rut: 181226722, nombre:	'Daniel',apellido_paterno:	'Morales',apellido_materno:	'Aguilera', correo:	'daniel.morales@usach.cl', rol:	1, estado: true)
pro5 = Usuario.create(rut: 106138451, nombre:	'Jose',apellido_paterno: 'Castro', apellido_materno: 'Lobos', correo: 'profesormanuelapp@gmail.com', rol:	1, estado: true)

Profesore.create(rut: '17832733k', nombre: 'Ian', apellido_paterno:	'Mejias', apellido_materno:	'Conejeros', correo: 'ian.mejias@usach.cl', descripcion:'', usuario_id: pro1.id, estado: true)
Profesore.create(rut: 176814063, nombre:	'Claudia',apellido_paterno:	'Pérez',apellido_materno:	'Ormeño', correo:	'claudia.perozo@usach.cl',descripcion:'', usuario_id: pro2.id, estado: true)
Profesore.create(rut: 184553740, nombre: 'Pablo',	apellido_paterno: 'Salinas',apellido_materno:	'Cabañas', correo:	'pablo.salinasc@usach.cl', descripcion:'', usuario_id: pro3.id, estado: true)
Profesore.create(rut: 181226722, nombre:	'Daniel',apellido_paterno:	'Morales',apellido_materno:	'Aguilera', correo:	'daniel.morales@usach.cl', descripcion:'', usuario_id: pro4.id, estado: true)
Profesore.create(rut: 106138451, nombre:	'Jose',apellido_paterno: 'Castro', apellido_materno: 'Lobos', correo: 'profesormanuelapp@gmail.com', descripcion:'', usuario_id: pro5.id, estado: true)

###########
# ALUMNOS #
###########
a1 = Usuario.create(rut: 172945864, nombre:	'Alberto', apellido_paterno: 'Toro', apellido_materno:	'Figueroa', correo:	'alberto.toro@usach.cl', rol: 2, estado: true)
a2 = Usuario.create(rut: 182105384, nombre:	'Vasco', apellido_paterno:	'Vergara', apellido_materno: 'Arellano', correo: 'vasco.vergara@usach.cl', rol:	2, estado: true)
a3 = Usuario.create(rut: 177087866, nombre:	'Claudia', apellido_paterno: 'Guzmán', apellido_materno:	'Silva', correo: 'claudia.guzmans@usach.cl',  rol:	2	, estado: true)
a4 = Usuario.create(rut: 74393918, nombre:	'Mauricio',apellido_paterno: 'Molina',apellido_materno:	'Roa', correo:	'alumnomanuelapp@gmail.com', rol: 2, estado: true)
a5 = Usuario.create(rut: 182044695, nombre:	'Alexis',apellido_paterno:	'Casanueva',apellido_materno:	'Ojeda', correo:	'alumno1manuelapp@gmail.com', rol:	2, estado: true)
a6 = Usuario.create(rut: 95072621, nombre:	'Carlos',apellido_paterno:	'Jorquera',apellido_materno:	'Pozo', correo:	'alumno2manuelapp@gmail.com', rol:	2, estado: true)	
a7 = Usuario.create(rut: 92032825, nombre:	'Alejandro',apellido_paterno: 'Pineda',	apellido_materno:'Prieto', correo:	'ayudantemanuelapp@gmail.com', rol:	2, estado: true)	
a8 = Usuario.create(rut: 181895683, nombre:	'Francisco', apellido_paterno:	'Avello', apellido_materno:	'Barrera', correo:	'francisco.avello@usach.cl', rol: 2, estado: true)

al1 = Alumno.create(rut: 172945864, nombre:	'Alberto', apellido_paterno: 'Toro', apellido_materno:	'Figueroa', correo:	'alberto.toro@usach.cl', usuario_id: a1.id, estado: true)
al2 = Alumno.create(rut: 182105384, nombre:	'Vasco', apellido_paterno:	'Vergara', apellido_materno: 'Arellano', correo: 'vasco.vergara@usach.cl', usuario_id: a2.id, estado: true)
al3 = Alumno.create(rut: 177087866, nombre:	'Claudia', apellido_paterno: 'Guzmán', apellido_materno:	'Silva', correo: 'claudia.guzmans@usach.cl',  usuario_id: a3.id, estado: true)
al4 = Alumno.create(rut: 74393918, nombre:	'Mauricio',apellido_paterno: 'Molina',apellido_materno:	'Roa', correo:	'alumnomanuelapp@gmail.com', usuario_id: a4.id, estado: true)
al5 = Alumno.create(rut: 182044695, nombre:	'Alexis',apellido_paterno:	'Casanueva',apellido_materno:	'Ojeda', correo:	'alumno1manuelapp@gmail.com', usuario_id: a5.id, estado: true)
al6 = Alumno.create(rut: 95072621, nombre:	'Carlos',apellido_paterno:	'Jorquera',apellido_materno:	'Pozo', correo:	'alumno2manuelapp@gmail.com', usuario_id: a6.id, estado: true)	
al7 = Alumno.create(rut: 92032825, nombre:	'Alejandro',apellido_paterno: 'Pineda',	apellido_materno:'Prieto', correo:	'ayudantemanuelapp@gmail.com', usuario_id: a7.id, estado: true)	
al8 = Alumno.create(rut: 181895683, nombre:	'Francisco', apellido_paterno:	'Avello', apellido_materno:	'Barrera', correo:	'francisco.avello@usach.cl', usuario_id: a8.id, estado: true)


c1 = Curso.create(profesor_id: 1, nombre: 'IHC', semestre: 2, ano:2015, descripcion: 'Curso IHC Edmundo Leiva')
c2 = Curso.create(profesor_id: 2, nombre: 'Pingeso', semestre: 2, ano:2015, descripcion: 'Curso PINGESO 2/2015' )
c3 = Curso.create(profesor_id: 3, nombre: 'CYS', semestre: 2, ano:2015, descripcion: 'Curso CyS' )
c4 = Curso.create(profesor_id: 4, nombre: 'CHT', semestre: 2, ano:2015, descripcion: 'Curso CHT' )
c5 = Curso.create(profesor_id: 5, nombre: 'Administración de empresas', semestre: 2, ano:2015, descripcion: 'Curso Administración de empresas' )


 CursoAlumno.create(curso_id: c1.id, alumno_id: al1.id)
 CursoAlumno.create(curso_id: c1.id, alumno_id: al2.id)
 CursoAlumno.create(curso_id: c1.id, alumno_id: al3.id)
 CursoAlumno.create(curso_id: c1.id, alumno_id: al4.id)
 CursoAlumno.create(curso_id: c1.id, alumno_id: al5.id)
 CursoAlumno.create(curso_id: c1.id, alumno_id: al6.id)
 CursoAlumno.create(curso_id: c1.id, alumno_id: al7.id)
 CursoAlumno.create(curso_id: c1.id, alumno_id: al8.id)

|CursoAlumno.create(curso_id: c2.id, alumno_id: al1.id)
 CursoAlumno.create(curso_id: c2.id, alumno_id: al2.id)
 CursoAlumno.create(curso_id: c2.id, alumno_id: al3.id)
 CursoAlumno.create(curso_id: c2.id, alumno_id: al4.id)
 CursoAlumno.create(curso_id: c2.id, alumno_id: al5.id)
 CursoAlumno.create(curso_id: c2.id, alumno_id: al6.id)
 CursoAlumno.create(curso_id: c2.id, alumno_id: al7.id)
 CursoAlumno.create(curso_id: c2.id, alumno_id: al8.id)

 CursoAlumno.create(curso_id: c3.id, alumno_id: al1.id)
 CursoAlumno.create(curso_id: c3.id, alumno_id: al2.id)
 CursoAlumno.create(curso_id: c3.id, alumno_id: al3.id)
 CursoAlumno.create(curso_id: c3.id, alumno_id: al4.id)
 CursoAlumno.create(curso_id: c3.id, alumno_id: al5.id)
 CursoAlumno.create(curso_id: c3.id, alumno_id: al6.id)
 CursoAlumno.create(curso_id: c3.id, alumno_id: al7.id)
 CursoAlumno.create(curso_id: c3.id, alumno_id: al8.id)

 CursoAlumno.create(curso_id: c4.id, alumno_id: al1.id)
 CursoAlumno.create(curso_id: c4.id, alumno_id: al2.id)
 CursoAlumno.create(curso_id: c4.id, alumno_id: al3.id)
 CursoAlumno.create(curso_id: c4.id, alumno_id: al4.id)
 CursoAlumno.create(curso_id: c4.id, alumno_id: al5.id)
 CursoAlumno.create(curso_id: c4.id, alumno_id: al6.id)
 CursoAlumno.create(curso_id: c4.id, alumno_id: al7.id)
 CursoAlumno.create(curso_id: c4.id, alumno_id: al8.id)

 CursoAlumno.create(curso_id: c5.id, alumno_id: al1.id)
 CursoAlumno.create(curso_id: c5.id, alumno_id: al2.id)
 CursoAlumno.create(curso_id: c5.id, alumno_id: al3.id)
 CursoAlumno.create(curso_id: c5.id, alumno_id: al4.id)
 CursoAlumno.create(curso_id: c5.id, alumno_id: al5.id)
 CursoAlumno.create(curso_id: c5.id, alumno_id: al6.id)
 CursoAlumno.create(curso_id: c5.id, alumno_id: al7.id)
 CursoAlumno.create(curso_id: c5.id, alumno_id: al8.id)

g1= Grupo.create(nombre: 'Grupo 1', curso_id: c1.id, descripcion: 'Aquí se encuentran los alumnos pertenecientes al grupo 1')
g2= Grupo.create(nombre: 'Grupo 2', curso_id: c1.id, descripcion: 'Aquí se encuentran los alumnos pertenecientes al grupo 2')

g3= Grupo.create(nombre: 'Grupo 1', curso_id: c2.id, descripcion: 'Aquí se encuentran los alumnos pertenecientes al grupo 1')
g4= Grupo.create(nombre: 'Grupo 2', curso_id: c2.id, descripcion: 'Aquí se encuentran los alumnos pertenecientes al grupo 2')

g5= Grupo.create(nombre: 'Grupo 1', curso_id: c3.id, descripcion: 'Aquí se encuentran los alumnos pertenecientes al grupo 1')
g6= Grupo.create(nombre: 'Grupo 2', curso_id: c3.id, descripcion: 'Aquí se encuentran los alumnos pertenecientes al grupo 2')

g7= Grupo.create(nombre: 'Grupo 1', curso_id: c4.id, descripcion: 'Aquí se encuentran los alumnos pertenecientes al grupo 1')
g8= Grupo.create(nombre: 'Grupo 2', curso_id: c4.id, descripcion: 'Aquí se encuentran los alumnos pertenecientes al grupo 2')

g9= Grupo.create(nombre: 'Grupo 1', curso_id: c5.id, descripcion: 'Aquí se encuentran los alumnos pertenecientes al grupo 1')
g10= Grupo.create(nombre: 'Grupo 2', curso_id: c5.id, descripcion: 'Aquí se encuentran los alumnos pertenecientes al grupo 2')


 GrupoAlumno.create(alumno_id: al1.id , grupo_id: g1.id)
 GrupoAlumno.create(alumno_id: al2.id , grupo_id: g1.id)
 GrupoAlumno.create(alumno_id: al3.id , grupo_id: g1.id)
 GrupoAlumno.create(alumno_id: al4.id , grupo_id: g1.id)

 GrupoAlumno.create(alumno_id: al5.id , grupo_id: g2.id)
 GrupoAlumno.create(alumno_id: al6.id , grupo_id: g2.id)
 GrupoAlumno.create(alumno_id: al7.id , grupo_id: g2.id)
 GrupoAlumno.create(alumno_id: al8.id , grupo_id: g2.id)


 GrupoAlumno.create(alumno_id: al1.id , grupo_id: g3.id)
 GrupoAlumno.create(alumno_id: al2.id , grupo_id: g3.id)
 GrupoAlumno.create(alumno_id: al3.id , grupo_id: g3.id)
 GrupoAlumno.create(alumno_id: al4.id , grupo_id: g3.id)

 GrupoAlumno.create(alumno_id: al5.id , grupo_id: g4.id)
 GrupoAlumno.create(alumno_id: al6.id , grupo_id: g4.id)
 GrupoAlumno.create(alumno_id: al7.id , grupo_id: g4.id)
 GrupoAlumno.create(alumno_id: al8.id , grupo_id: g4.id)


 GrupoAlumno.create(alumno_id: al1.id , grupo_id: g5.id)
 GrupoAlumno.create(alumno_id: al2.id , grupo_id: g5.id)
 GrupoAlumno.create(alumno_id: al3.id , grupo_id: g5.id)
 GrupoAlumno.create(alumno_id: al4.id , grupo_id: g5.id)

 GrupoAlumno.create(alumno_id: al5.id , grupo_id: g6.id)
 GrupoAlumno.create(alumno_id: al6.id , grupo_id: g6.id)
 GrupoAlumno.create(alumno_id: al7.id , grupo_id: g6.id)
 GrupoAlumno.create(alumno_id: al8.id , grupo_id: g6.id)


 GrupoAlumno.create(alumno_id: al1.id , grupo_id: g7.id)
 GrupoAlumno.create(alumno_id: al2.id , grupo_id: g7.id)
 GrupoAlumno.create(alumno_id: al3.id , grupo_id: g7.id)
 GrupoAlumno.create(alumno_id: al4.id , grupo_id: g7.id)

 GrupoAlumno.create(alumno_id: al5.id , grupo_id: g8.id)
 GrupoAlumno.create(alumno_id: al6.id , grupo_id: g8.id)
 GrupoAlumno.create(alumno_id: al7.id , grupo_id: g8.id)
 GrupoAlumno.create(alumno_id: al8.id , grupo_id: g8.id)


 GrupoAlumno.create(alumno_id: al1.id , grupo_id: g9.id)
 GrupoAlumno.create(alumno_id: al2.id , grupo_id: g9.id)
 GrupoAlumno.create(alumno_id: al3.id , grupo_id: g9.id)
 GrupoAlumno.create(alumno_id: al4.id , grupo_id: g9.id)

 GrupoAlumno.create(alumno_id: al5.id , grupo_id: g10.id)
 GrupoAlumno.create(alumno_id: al6.id , grupo_id: g10.id)
 GrupoAlumno.create(alumno_id: al7.id , grupo_id: g10.id)
 GrupoAlumno.create(alumno_id: al8.id , grupo_id: g10.id)



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

p1 = Preguntum.create(enunciado: '¿Realiza las tareas que le son asignadas dentro del grupo en los plazos requeridos?')
p2 = Preguntum.create(enunciado: '¿Participa de forma activa en los espacios de encuentro del equipo, compartiendo la información, los conocimientos y las experiencias?')
p3 = Preguntum.create(enunciado: '¿Colabora en la definición, organización y distribución de las tareas del equipo?')
p4 = Preguntum.create(enunciado: '¿Se orienta a la consecución de acuerdos y objetivos comunes y se compromete con ellos?')
p5 = Preguntum.create(enunciado: '¿Toma en cuenta los puntos de vista de los demás y retroalimenta constructivamente?')
p6 = Preguntum.create(enunciado: '¿Volvería a involucrase con esta persona en otro proyecto?')
p7 = Preguntum.create(enunciado: '¿Cómo definiría el trabajo de liderazgo de su jefe o facilitador?')
p8 = Preguntum.create(enunciado: '¿Se siente satisfecho con el trabajo realizado?')

EncuestaPreguntum.create(encuesta_id: enc_360.id , pregunta_id: p1.id)
EncuestaPreguntum.create(encuesta_id: enc_360.id , pregunta_id: p2.id)
EncuestaPreguntum.create(encuesta_id: enc_360.id , pregunta_id: p3.id)
EncuestaPreguntum.create(encuesta_id: enc_360.id , pregunta_id: p4.id)
EncuestaPreguntum.create(encuesta_id: enc_360.id , pregunta_id: p5.id)
EncuestaPreguntum.create(encuesta_id: enc_360.id, pregunta_id: p6.id)
EncuestaPreguntum.create(encuesta_id: enc_360.id, pregunta_id: p7.id)
EncuestaPreguntum.create(encuesta_id: enc_360.id, pregunta_id: p8.id)

EncuestaPreguntum.create(encuesta_id: enc_lid.id, pregunta_id: p1.id)
EncuestaPreguntum.create(encuesta_id: enc_lid.id, pregunta_id: p2.id)
EncuestaPreguntum.create(encuesta_id: enc_lid.id, pregunta_id: p3.id)
EncuestaPreguntum.create(encuesta_id: enc_lid.id, pregunta_id: p4.id)
EncuestaPreguntum.create(encuesta_id: enc_lid.id, pregunta_id: p5.id)
EncuestaPreguntum.create(encuesta_id: enc_lid.id, pregunta_id: p6.id)
EncuestaPreguntum.create(encuesta_id: enc_lid.id, pregunta_id: p7.id)
EncuestaPreguntum.create(encuesta_id: enc_lid.id, pregunta_id: p8.id)


eva1 = Evaluacione.create(contestada: true, nombre: 'Encuesta 360 - Sprint 1', curso_id: c1.id, encuesta: enc_360)
eva2 = Evaluacione.create(contestada: false, nombre: 'Encuesta 360 - Sprint 2', curso_id: c1.id, encuesta: enc_360)

res1 = Respuestum.create(encuestado_id: 2,encuestador_id: 1, evaluacion_id: eva1.id, grupo_id: g1.id , respondida: true)
res2 = Respuestum.create(encuestado_id: 3,encuestador_id: 1, evaluacion_id: eva1.id, grupo_id: g1.id , respondida: true)
res3 = Respuestum.create(encuestado_id: 4,encuestador_id: 1, evaluacion_id: eva1.id, grupo_id: g1.id , respondida: true)

res4 = Respuestum.create(encuestado_id: 1,encuestador_id: 2, evaluacion_id: eva1.id, grupo_id: g1.id , respondida: true)
res5 = Respuestum.create(encuestado_id: 3,encuestador_id: 2, evaluacion_id: eva1.id, grupo_id: g1.id , respondida: true)
res6 = Respuestum.create(encuestado_id: 4,encuestador_id: 2, evaluacion_id: eva1.id, grupo_id: g1.id , respondida: true)

res7 = Respuestum.create(encuestado_id: 1,encuestador_id: 3, evaluacion_id: eva1.id, grupo_id: g1.id , respondida: true)
res8 = Respuestum.create(encuestado_id: 2,encuestador_id: 3, evaluacion_id: eva1.id, grupo_id: g1.id , respondida: true)
res9 = Respuestum.create(encuestado_id: 4,encuestador_id: 3, evaluacion_id: eva1.id, grupo_id: g1.id , respondida: true)

res10 = Respuestum.create(encuestado_id: 1,encuestador_id: 4, evaluacion_id: eva1.id, grupo_id: g1.id , respondida: true)
res11 = Respuestum.create(encuestado_id: 2,encuestador_id: 4, evaluacion_id: eva1.id, grupo_id: g1.id , respondida: true)
res12 = Respuestum.create(encuestado_id: 3,encuestador_id: 4, evaluacion_id: eva1.id, grupo_id: g1.id , respondida: true)


res13 = Respuestum.create(encuestado_id: 6,encuestador_id: 5, evaluacion_id: eva1.id, grupo_id: g2.id , respondida: true)
res14 = Respuestum.create(encuestado_id: 7,encuestador_id: 5, evaluacion_id: eva1.id, grupo_id: g2.id , respondida: true)
res15 = Respuestum.create(encuestado_id: 8,encuestador_id: 5, evaluacion_id: eva1.id, grupo_id: g2.id , respondida: true)


res16 = Respuestum.create(encuestado_id: 5,encuestador_id: 6, evaluacion_id: eva1.id, grupo_id: g2.id , respondida: true)
res17 = Respuestum.create(encuestado_id: 7,encuestador_id: 6, evaluacion_id: eva1.id, grupo_id: g2.id , respondida: true)
res18 = Respuestum.create(encuestado_id: 8,encuestador_id: 6, evaluacion_id: eva1.id, grupo_id: g2.id , respondida: true)

res19 = Respuestum.create(encuestado_id: 5,encuestador_id: 7, evaluacion_id: eva1.id, grupo_id: g2.id , respondida: true)
res20 = Respuestum.create(encuestado_id: 6,encuestador_id: 7, evaluacion_id: eva1.id, grupo_id: g2.id , respondida: true)
res21 = Respuestum.create(encuestado_id: 8,encuestador_id: 7, evaluacion_id: eva1.id, grupo_id: g2.id , respondida: true)

res22 = Respuestum.create(encuestado_id: 5,encuestador_id: 8, evaluacion_id: eva1.id, grupo_id: g2.id , respondida: true)
res23 = Respuestum.create(encuestado_id: 7,encuestador_id: 8, evaluacion_id: eva1.id, grupo_id: g2.id , respondida: true)
res24 = Respuestum.create(encuestado_id: 6,encuestador_id: 8, evaluacion_id: eva1.id, grupo_id: g2.id , respondida: true)


Respuestum.create(encuestado_id: 2,encuestador_id: 1, evaluacion_id: eva2.id, grupo_id: g1.id , respondida: false)
Respuestum.create(encuestado_id: 3,encuestador_id: 1, evaluacion_id: eva2.id, grupo_id: g1.id , respondida: false)
Respuestum.create(encuestado_id: 4,encuestador_id: 1, evaluacion_id: eva2.id, grupo_id: g1.id , respondida: false)

Respuestum.create(encuestado_id: 1,encuestador_id: 2, evaluacion_id: eva2.id, grupo_id: g1.id , respondida: false)
Respuestum.create(encuestado_id: 3,encuestador_id: 2, evaluacion_id: eva2.id, grupo_id: g1.id , respondida: false)
Respuestum.create(encuestado_id: 4,encuestador_id: 2, evaluacion_id: eva2.id, grupo_id: g1.id , respondida: false)

Respuestum.create(encuestado_id: 1,encuestador_id: 3, evaluacion_id: eva2.id, grupo_id: g1.id , respondida: false)
Respuestum.create(encuestado_id: 2,encuestador_id: 3, evaluacion_id: eva2.id, grupo_id: g1.id , respondida: false)
Respuestum.create(encuestado_id: 4,encuestador_id: 3, evaluacion_id: eva2.id, grupo_id: g1.id , respondida: false)

Respuestum.create(encuestado_id: 1,encuestador_id: 4, evaluacion_id: eva2.id, grupo_id: g1.id , respondida: false)
Respuestum.create(encuestado_id: 2,encuestador_id: 4, evaluacion_id: eva2.id, grupo_id: g1.id , respondida: false)
Respuestum.create(encuestado_id: 3,encuestador_id: 4, evaluacion_id: eva2.id, grupo_id: g1.id , respondida: false)

Respuestum.create(encuestado_id: 6,encuestador_id: 5, evaluacion_id: eva2.id, grupo_id: g2.id , respondida: false)
Respuestum.create(encuestado_id: 7,encuestador_id: 5, evaluacion_id: eva2.id, grupo_id: g2.id , respondida: false)
Respuestum.create(encuestado_id: 8,encuestador_id: 5, evaluacion_id: eva2.id, grupo_id: g2.id , respondida: false)

Respuestum.create(encuestado_id: 5,encuestador_id: 6, evaluacion_id: eva2.id, grupo_id: g2.id , respondida: false)
Respuestum.create(encuestado_id: 7,encuestador_id: 6, evaluacion_id: eva2.id, grupo_id: g2.id , respondida: false)
Respuestum.create(encuestado_id: 8,encuestador_id: 6, evaluacion_id: eva2.id, grupo_id: g2.id , respondida: false)

Respuestum.create(encuestado_id: 5,encuestador_id: 7, evaluacion_id: eva2.id, grupo_id: g2.id , respondida: false)
Respuestum.create(encuestado_id: 6,encuestador_id: 7, evaluacion_id: eva2.id, grupo_id: g2.id , respondida: false)
Respuestum.create(encuestado_id: 8,encuestador_id: 7, evaluacion_id: eva2.id, grupo_id: g2.id , respondida: false)

Respuestum.create(encuestado_id: 5,encuestador_id: 8, evaluacion_id: eva2.id, grupo_id: g2.id , respondida: false)
Respuestum.create(encuestado_id: 7,encuestador_id: 8, evaluacion_id: eva2.id, grupo_id: g2.id , respondida: false)
Respuestum.create(encuestado_id: 6,encuestador_id: 8, evaluacion_id: eva2.id, grupo_id: g2.id , respondida: false)
#Respuestum.create(encuestado_id: 3,encuestador_id:2, evaluacion_id: 1)
#Respuestum.create(encuestado_id: 4,encuestador_id: 2, evaluacion_id: 1)

RespuestumPreguntum.create(respuesta_id: res1.id, pregunta_id: p1.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res1.id, pregunta_id: p2.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res1.id, pregunta_id: p3.id, valor_opcion: 0)
RespuestumPreguntum.create(respuesta_id: res1.id, pregunta_id: p4.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res1.id, pregunta_id: p5.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res1.id, pregunta_id: p6.id, valor_opcion: 1)
RespuestumPreguntum.create(respuesta_id: res1.id, pregunta_id: p7.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res1.id, pregunta_id: p8.id, valor_opcion: 3)

RespuestumPreguntum.create(respuesta_id: res2.id, pregunta_id: p1.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res2.id, pregunta_id: p2.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res2.id, pregunta_id: p3.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res2.id, pregunta_id: p4.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res2.id, pregunta_id: p5.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res2.id, pregunta_id: p6.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res2.id, pregunta_id: p7.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res2.id, pregunta_id: p8.id, valor_opcion: 3)

RespuestumPreguntum.create(respuesta_id: res3.id, pregunta_id: p1.id, valor_opcion: 0)
RespuestumPreguntum.create(respuesta_id: res3.id, pregunta_id: p2.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res3.id, pregunta_id: p3.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res3.id, pregunta_id: p4.id, valor_opcion: 4)
RespuestumPreguntum.create(respuesta_id: res3.id, pregunta_id: p5.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res3.id, pregunta_id: p6.id, valor_opcion: 1)
RespuestumPreguntum.create(respuesta_id: res3.id, pregunta_id: p7.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res3.id, pregunta_id: p8.id, valor_opcion: 1)

RespuestumPreguntum.create(respuesta_id: res4.id, pregunta_id: p1.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res4.id, pregunta_id: p2.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res4.id, pregunta_id: p3.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res4.id, pregunta_id: p4.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res4.id, pregunta_id: p5.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res4.id, pregunta_id: p6.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res4.id, pregunta_id: p7.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res4.id, pregunta_id: p8.id, valor_opcion: 3)

RespuestumPreguntum.create(respuesta_id: res5.id, pregunta_id: p1.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res5.id, pregunta_id: p2.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res5.id, pregunta_id: p3.id, valor_opcion: 0)
RespuestumPreguntum.create(respuesta_id: res5.id, pregunta_id: p4.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res5.id, pregunta_id: p5.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res5.id, pregunta_id: p6.id, valor_opcion: 1)
RespuestumPreguntum.create(respuesta_id: res5.id, pregunta_id: p7.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res5.id, pregunta_id: p8.id, valor_opcion: 3)

RespuestumPreguntum.create(respuesta_id: res6.id, pregunta_id: p1.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res6.id, pregunta_id: p2.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res6.id, pregunta_id: p3.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res6.id, pregunta_id: p4.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res6.id, pregunta_id: p5.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res6.id, pregunta_id: p6.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res6.id, pregunta_id: p7.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res6.id, pregunta_id: p8.id, valor_opcion: 3)

RespuestumPreguntum.create(respuesta_id: res7.id, pregunta_id: p1.id, valor_opcion: 0)
RespuestumPreguntum.create(respuesta_id: res7.id, pregunta_id: p2.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res7.id, pregunta_id: p3.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res7.id, pregunta_id: p4.id, valor_opcion: 4)
RespuestumPreguntum.create(respuesta_id: res7.id, pregunta_id: p5.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res7.id, pregunta_id: p6.id, valor_opcion: 1)
RespuestumPreguntum.create(respuesta_id: res7.id, pregunta_id: p7.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res7.id, pregunta_id: p8.id, valor_opcion: 1)

RespuestumPreguntum.create(respuesta_id: res8.id, pregunta_id: p1.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res8.id, pregunta_id: p2.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res8.id, pregunta_id: p3.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res8.id, pregunta_id: p4.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res8.id, pregunta_id: p5.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res8.id, pregunta_id: p6.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res8.id, pregunta_id: p7.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res8.id, pregunta_id: p8.id, valor_opcion: 3)

RespuestumPreguntum.create(respuesta_id: res9.id, pregunta_id: p1.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res9.id, pregunta_id: p2.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res9.id, pregunta_id: p3.id, valor_opcion: 0)
RespuestumPreguntum.create(respuesta_id: res9.id, pregunta_id: p4.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res9.id, pregunta_id: p5.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res9.id, pregunta_id: p6.id, valor_opcion: 1)
RespuestumPreguntum.create(respuesta_id: res9.id, pregunta_id: p7.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res9.id, pregunta_id: p8.id, valor_opcion: 3)

RespuestumPreguntum.create(respuesta_id: res10.id, pregunta_id: p1.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res10.id, pregunta_id: p2.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res10.id, pregunta_id: p3.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res10.id, pregunta_id: p4.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res10.id, pregunta_id: p5.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res10.id, pregunta_id: p6.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res10.id, pregunta_id: p7.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res10.id, pregunta_id: p8.id, valor_opcion: 3)

RespuestumPreguntum.create(respuesta_id: res11.id, pregunta_id: p1.id, valor_opcion: 0)
RespuestumPreguntum.create(respuesta_id: res11.id, pregunta_id: p2.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res11.id, pregunta_id: p3.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res11.id, pregunta_id: p4.id, valor_opcion: 4)
RespuestumPreguntum.create(respuesta_id: res11.id, pregunta_id: p5.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res11.id, pregunta_id: p6.id, valor_opcion: 1)
RespuestumPreguntum.create(respuesta_id: res11.id, pregunta_id: p7.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res11.id, pregunta_id: p8.id, valor_opcion: 1)

RespuestumPreguntum.create(respuesta_id: res12.id, pregunta_id: p1.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res12.id, pregunta_id: p2.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res12.id, pregunta_id: p3.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res12.id, pregunta_id: p4.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res12.id, pregunta_id: p5.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res12.id, pregunta_id: p6.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res12.id, pregunta_id: p7.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res12.id, pregunta_id: p8.id, valor_opcion: 3)

RespuestumPreguntum.create(respuesta_id: res13.id, pregunta_id: p1.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res13.id, pregunta_id: p2.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res13.id, pregunta_id: p3.id, valor_opcion: 0)
RespuestumPreguntum.create(respuesta_id: res13.id, pregunta_id: p4.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res13.id, pregunta_id: p5.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res13.id, pregunta_id: p6.id, valor_opcion: 1)
RespuestumPreguntum.create(respuesta_id: res13.id, pregunta_id: p7.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res13.id, pregunta_id: p8.id, valor_opcion: 3)

RespuestumPreguntum.create(respuesta_id: res14.id, pregunta_id: p1.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res14.id, pregunta_id: p2.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res14.id, pregunta_id: p3.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res14.id, pregunta_id: p4.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res14.id, pregunta_id: p5.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res14.id, pregunta_id: p6.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res14.id, pregunta_id: p7.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res14.id, pregunta_id: p8.id, valor_opcion: 3)

RespuestumPreguntum.create(respuesta_id: res15.id, pregunta_id: p1.id, valor_opcion: 0)
RespuestumPreguntum.create(respuesta_id: res15.id, pregunta_id: p2.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res15.id, pregunta_id: p3.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res15.id, pregunta_id: p4.id, valor_opcion: 4)
RespuestumPreguntum.create(respuesta_id: res15.id, pregunta_id: p5.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res15.id, pregunta_id: p6.id, valor_opcion: 1)
RespuestumPreguntum.create(respuesta_id: res15.id, pregunta_id: p7.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res15.id, pregunta_id: p8.id, valor_opcion: 1)

RespuestumPreguntum.create(respuesta_id: res16.id, pregunta_id: p1.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res16.id, pregunta_id: p2.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res16.id, pregunta_id: p3.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res16.id, pregunta_id: p4.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res16.id, pregunta_id: p5.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res16.id, pregunta_id: p6.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res16.id, pregunta_id: p7.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res16.id, pregunta_id: p8.id, valor_opcion: 3)

RespuestumPreguntum.create(respuesta_id: res17.id, pregunta_id: p1.id, valor_opcion: 0)
RespuestumPreguntum.create(respuesta_id: res17.id, pregunta_id: p2.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res17.id, pregunta_id: p3.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res17.id, pregunta_id: p4.id, valor_opcion: 4)
RespuestumPreguntum.create(respuesta_id: res17.id, pregunta_id: p5.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res17.id, pregunta_id: p6.id, valor_opcion: 1)
RespuestumPreguntum.create(respuesta_id: res17.id, pregunta_id: p7.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res17.id, pregunta_id: p8.id, valor_opcion: 1)

RespuestumPreguntum.create(respuesta_id: res18.id, pregunta_id: p1.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res18.id, pregunta_id: p2.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res18.id, pregunta_id: p3.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res18.id, pregunta_id: p4.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res18.id, pregunta_id: p5.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res18.id, pregunta_id: p6.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res18.id, pregunta_id: p7.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res18.id, pregunta_id: p8.id, valor_opcion: 3)

RespuestumPreguntum.create(respuesta_id: res19.id, pregunta_id: p1.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res19.id, pregunta_id: p2.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res19.id, pregunta_id: p3.id, valor_opcion: 0)
RespuestumPreguntum.create(respuesta_id: res19.id, pregunta_id: p4.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res19.id, pregunta_id: p5.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res19.id, pregunta_id: p6.id, valor_opcion: 1)
RespuestumPreguntum.create(respuesta_id: res19.id, pregunta_id: p7.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res19.id, pregunta_id: p8.id, valor_opcion: 3)

RespuestumPreguntum.create(respuesta_id: res20.id, pregunta_id: p1.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res20.id, pregunta_id: p2.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res20.id, pregunta_id: p3.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res20.id, pregunta_id: p4.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res20.id, pregunta_id: p5.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res20.id, pregunta_id: p6.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res20.id, pregunta_id: p7.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res20.id, pregunta_id: p8.id, valor_opcion: 3)

RespuestumPreguntum.create(respuesta_id: res21.id, pregunta_id: p1.id, valor_opcion: 0)
RespuestumPreguntum.create(respuesta_id: res21.id, pregunta_id: p2.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res21.id, pregunta_id: p3.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res21.id, pregunta_id: p4.id, valor_opcion: 4)
RespuestumPreguntum.create(respuesta_id: res21.id, pregunta_id: p5.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res21.id, pregunta_id: p6.id, valor_opcion: 1)
RespuestumPreguntum.create(respuesta_id: res21.id, pregunta_id: p7.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res21.id, pregunta_id: p8.id, valor_opcion: 1)

RespuestumPreguntum.create(respuesta_id: res22.id, pregunta_id: p1.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res22.id, pregunta_id: p2.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res22.id, pregunta_id: p3.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res22.id, pregunta_id: p4.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res22.id, pregunta_id: p5.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res22.id, pregunta_id: p6.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res22.id, pregunta_id: p7.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res22.id, pregunta_id: p8.id, valor_opcion: 3)

RespuestumPreguntum.create(respuesta_id: res23.id, pregunta_id: p1.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res23.id, pregunta_id: p2.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res23.id, pregunta_id: p3.id, valor_opcion: 0)
RespuestumPreguntum.create(respuesta_id: res23.id, pregunta_id: p4.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res23.id, pregunta_id: p5.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res23.id, pregunta_id: p6.id, valor_opcion: 1)
RespuestumPreguntum.create(respuesta_id: res23.id, pregunta_id: p7.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res23.id, pregunta_id: p8.id, valor_opcion: 3)

RespuestumPreguntum.create(respuesta_id: res24.id, pregunta_id: p1.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res24.id, pregunta_id: p2.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res24.id, pregunta_id: p3.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res24.id, pregunta_id: p4.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res24.id, pregunta_id: p5.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res24.id, pregunta_id: p6.id, valor_opcion: 3)
RespuestumPreguntum.create(respuesta_id: res24.id, pregunta_id: p7.id, valor_opcion: 2)
RespuestumPreguntum.create(respuesta_id: res24.id, pregunta_id: p8.id, valor_opcion: 3)


# RespuestumPreguntum.create(respuesta_id: 1,pregunta_id: 2, valor_opcion: 3)
# RespuestumPreguntum.create(respuesta_id: 1,pregunta_id: 3, valor_opcion: 0)
# RespuestumPreguntum.create(respuesta_id: 2,pregunta_id: 1, valor_opcion: 3)
# RespuestumPreguntum.create(respuesta_id: 2,pregunta_id: 2, valor_opcion: 0)
# RespuestumPreguntum.create(respuesta_id: 2,pregunta_id: 3, valor_opcion: 2)
# RespuestumPreguntum.create(respuesta_id: 3,pregunta_id: 1, valor_opcion: 2)
# RespuestumPreguntum.create(respuesta_id: 3,pregunta_id: 2, valor_opcion: 1)
# RespuestumPreguntum.create(respuesta_id: 3,pregunta_id: 3, valor_opcion: 3)

Opcione.create( valor: 0 , opcion_text: 'No cumple las tareas asignadas',pregunta_id: p1_id )
Opcione.create( valor: 1 , opcion_text: 'Cumple parcialmente o se retrasa',pregunta_id: p1_id)
Opcione.create( valor: 2 , opcion_text: 'Cumple en el plazo establecido con la tarea correspondiente',pregunta_id: p1_id )
Opcione.create( valor: 3 , opcion_text: 'Cumple con la tarea y la calidad supone un aporte notable',pregunta_id: p1_id )
Opcione.create( valor: 4 , opcion_text: 'Cumple con la tarea y su trabajo aporta, orienta y facilita la del resto del equipo',pregunta_id: p1_id )

Opcione.create( valor: 0 , opcion_text: 'Se ausenta con facilidad y su presencia es irrelevante',pregunta_id: p2_id)
Opcione.create( valor: 1 , opcion_text: 'Interviene poco, pero atiende a los requerimientos del resto.',pregunta_id: p2_id )
Opcione.create( valor: 2 , opcion_text: 'En general, se muestra activo y participativo',pregunta_id: p2_id )
Opcione.create( valor: 3 , opcion_text: 'Fomenta la participación y mejora la calidad de los resultados del equipo',pregunta_id: p2_id )
Opcione.create( valor: 4 , opcion_text: 'Sus aportes son fundamentales tanto para la calidad como el resultado del producto',pregunta_id: p2_id )

Opcione.create( valor: 0 , opcion_text: 'Se resiste a trabajar en equipo',pregunta_id: p3_id )
Opcione.create( valor: 1 , opcion_text: 'Se limita a aceptar la organización propuesta por los otros miembros',pregunta_id: p3_id )
Opcione.create( valor: 2 , opcion_text: 'Participa en la planificación, organización y distribución de tareas',pregunta_id: p3_id)
Opcione.create( valor: 3 , opcion_text: 'Es organizado y distribuye el trabajo con eficacia',pregunta_id: p3_id )
Opcione.create( valor: 4 , opcion_text: 'Fomenta la organización del trabajo aprovechando los recursos y habilidades del equipo',pregunta_id: p3_id )

Opcione.create( valor: 0 , opcion_text: 'Persigue objetivos personales',pregunta_id: p4_id )
Opcione.create( valor: 1 , opcion_text: 'Le cuesta integrar los objetivos personales con los del equipo',pregunta_id: p4_id )
Opcione.create( valor: 2 , opcion_text: 'Asume como propios los objetivos del equipo',pregunta_id: p4_id )
Opcione.create( valor: 3 , opcion_text: 'Promueve la definición de objetivos de manera clara e integrando al equipo en torno a los mismos',pregunta_id: p4_id )
Opcione.create( valor: 4 , opcion_text: 'Moviliza y cohesiona al equipo para alcanzar objetivos más exigentes',pregunta_id: p4_id )

Opcione.create( valor: 0 , opcion_text: 'No escucha las intervenciones de sus compañeros y las descalifica sistemáticamente',pregunta_id: p5_id )
Opcione.create( valor: 1 , opcion_text: 'Escucha poco, no pregunta, no se preocupa por la opinión ajena',pregunta_id: p5_id )
Opcione.create( valor: 2 , opcion_text: 'Acepta las opiniones de otros y sabe dar su punto de vista constructivamente',pregunta_id: p5_id )
Opcione.create( valor: 3 , opcion_text: 'Fomenta el diálogo constructivo e inspira la participación de los otros miembros del equipo',pregunta_id: p5_id )
Opcione.create( valor: 4 , opcion_text: 'Integra las opiniones ajenas en una perspectiva superior, manteniendo un clima de colaboración y apoyo',pregunta_id: p5_id )

Opcione.create( valor: 0 , opcion_text: 'Definitivamente no',pregunta_id: p6_id )
Opcione.create( valor: 1 , opcion_text: 'Posiblemente no',pregunta_id: p6_id )
Opcione.create( valor: 2 , opcion_text: 'Me es indiferente',pregunta_id: p6_id )
Opcione.create( valor: 3 , opcion_text: 'Posiblemente sí',pregunta_id: p6_id )
Opcione.create( valor: 4 , opcion_text: 'Definitivamente sí',pregunta_id: p6_id )

Opcione.create( valor: 0 , opcion_text: 'Es un pésimo jefe; genera mucho caos y conflicto',pregunta_id: p7_id )
Opcione.create( valor: 1 , opcion_text: 'Es un jefe con muchas faltas de liderazgo',pregunta_id: p7_id )
Opcione.create( valor: 2 , opcion_text: 'Es un jefe normal con defectos y virtudes',pregunta_id: p7_id )
Opcione.create( valor: 3 , opcion_text: 'Es un jefe que coordina y nos hace trabajar',pregunta_id: p7_id )
Opcione.create( valor: 4 , opcion_text: 'Es un excelente jefe que nos hace colaborar por un sentido común',pregunta_id: p7_id )

Opcione.create( valor: 0 , opcion_text: 'Siento que cumplí con lo básico que se me pidió que hiciera',pregunta_id: p8_id )
Opcione.create( valor: 1 , opcion_text: 'Siento que pude haber hecho mucho más',pregunta_id: p8_id )
Opcione.create( valor: 2 , opcion_text: 'Siento que cumplí lo necesario',pregunta_id: p8_id )
Opcione.create( valor: 3 , opcion_text: 'Siento que aporte más de lo pedido',pregunta_id: p8_id )
Opcione.create( valor: 4 , opcion_text: 'Me siento orgullo del nivel del trabajo y aporte que hice al proyecto',pregunta_id: p8_id )




# EncuestaAlumno.create(estado: true, alumno_id: 1, encuesta_id:1)
# EncuestaAlumno.create(estado: true, alumno_id: 2, encuesta_id:3)
# EncuestaAlumno.create(estado: false, alumno_id: 3, encuesta_id:2)
# EncuestaAlumno.create(estado: false, alumno_id: 4, encuesta_id:1)
# EncuestaAlumno.create(estado: true, alumno_id: 1, encuesta_id:2)
# EncuestaAlumno.create(estado: false, alumno_id: 1, encuesta_id:3)
# EncuestaAlumno.create(estado: false, alumno_id: 1, encuesta_id:4)
#EncuestaAlumno.create(estado: false, alumno_id: 3, encuesta_id:1)

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

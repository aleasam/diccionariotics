 # coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) are set in the file config/application.yml.
# See http://railsapps.github.com/rails-environment-variables.html
Role.destroy_all
puts 'ROLES'
YAML.load(ENV['ROLES']).each do |role|
  Role.find_or_create_by_name({ :name => role }, :without_protection => true)
  puts 'role: ' << role
end
puts 'User admin'
User.destroy_all
user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
puts 'user: ' << user.name
user.add_role :admin

puts 'User Experto'
user = User.find_or_create_by_email :name => ENV['EXP_NAME'].dup, :email => ENV['EXP_EMAIL'].dup, :password => ENV['EXP_PASSWORD'].dup, :password_confirmation => ENV['EXP_PASSWORD'].dup
puts 'user: ' << user.name
user.add_role :Experto


Categoria.destroy_all

10.times do |i|
		Categoria.create(nombre:"categoria #{i}",
		descripcion:"Esta es la descripcion de la categoria #{i} solo es para pruebas",
		created_date:"2013-01-23",
		updated_date:"2013-01-29")
	end



Termino.destroy_all

Termino.create(nombre:"Adjunto",categoria_id:"1",user_id:"1", descripcion_d:"Archivo de datos que se envia junto con un mensaje de correo electronico.",descripcion_r:"Ejemplo ",created_date:"2013-01-29",updated_date:"2012-01-21")


Termino.create(nombre:"Alias",categoria_id:"1",user_id:"1", descripcion_d: "Apodo o seudonimo. Es un nombre usualmente corto y facil de recordar que se utiliza en lugar de un nombre largo y dificil de memorizar",descripcion_r:"Ejemplo ",created_date:"2013-01-29",updated_date:"2012-01-21")


Termino.create(nombre:"Antivirus",categoria_id:"1",user_id:"1", descripcion_d:"Programa o aplicación que sirve para prevenir, detectar y eliminar programas malignos o posibles virus en los computadores.
",descripcion_r:"Ejemplo ",created_date:"2013-01-29",updated_date:"2012-01-21")

Termino.create(nombre:"API",categoria_id:"1",user_id:"1", descripcion_d:"Interfaz de programación de aplicaciones o API del ingles Application Programming Interface es el conjunto de funciones y procedimientos o métodos, en la programación orientada a objetos.
",descripcion_r:"Ejemplo ",created_date:"2013-01-29",updated_date:"2012-01-21")

 Termino.create(nombre:"Aplicación",categoria_id:"2",user_id:"1", descripcion_d:"Cualquier programa de tipo informático que haga una función específica para un usuario. Por ejemplo, procesadores de palabras, bases de datos, agendas electrónicas, etc.
",descripcion_r:"Ejemplo ",created_date:"2013-01-29",updated_date:"2012-01-21")

 

 Termino.create(nombre:"Archivo",categoria_id:"3",user_id:"2", descripcion_d:"Data que ha sido codificada para ser manipulada por un computador. Los archivos pueden ser guardados en CD-ROM, DVD, disco duro o cualquier otro medio de almacenamiento .
",descripcion_r:"Ejemplo ",created_date:"2013-01-29",updated_date:"2012-01-21")

 Termino.create(nombre:"ASI",categoria_id:"3",user_id:"2", descripcion_d:"Abuso Sexual Infantil.
",descripcion_r:"Ejemplo ",created_date:"2013-01-29",updated_date:"2012-01-21")

 
Termino.create(nombre:"AudioBlog",categoria_id:"4",user_id:"2", descripcion_d:"Se deriva del weblog. Su contenido generalmente se basa en audios, también se conoce como podcasting.
",descripcion_r:"Ejemplo ",created_date:"2013-01-29",updated_date:"2012-01-21")
 
 Termino.create(nombre:"Aulas de Recursos ",categoria_id:"4",user_id:"2", descripcion_d:"Son aulas para la docencia, especialmente acondicionadas para facilitar la utilización de los recursos educativos ",descripcion_r:"Ejemplo ",created_date:"2013-01-29",updated_date:"2012-01-21")

Termino.create(nombre:"Avatar",categoria_id:"4",user_id:"2", descripcion_d:"Foto o imagen con la cual los usuarios se identifican en las redes sociales, foros o juegos en línea.",descripcion_r:"Ejemplo ",created_date:"2013-01-29",updated_date:"2012-01-21")

 
  Termino.create(nombre:"Banner",categoria_id:"4",user_id:"2", descripcion_d:"Anuncio gráfico o animado que se encuentran en las páginas de Internet. Generalmente es usuado con fines publicitarios.",descripcion_r:"Ejemplo ",created_date:"2013-01-29",updated_date:"2012-01-21")

Termino.create(nombre:"Base de Datos ",categoria_id:"5",user_id:"2", descripcion_d:"Es un conjunto de datos que pertenecen al mismo contexto que se almacenan sistemáticamente. En una base de datos, la información se organiza en campos y registros. Los datos pueden aparecer en forma de texto, números.
",descripcion_r:"Ejemplo ",created_date:"2013-01-29",updated_date:"2012-01-21")

Termino.create(nombre:"Blog",categoria_id:"5",user_id:"2", descripcion_d:"Es un sitio web que se actualiza frecuentemente, y en el que se recopilan cronológicamente artículos o información que el autor quiera compartir.
",descripcion_r:"Ejemplo ",created_date:"2013-01-29",updated_date:"2012-01-21")
 
Termino.create(nombre:"Blogósfera",categoria_id:"6",user_id:"2", descripcion_d:"La suma de todos los blogs y sitios web relacionados a blogs forman la blogósfera (Blogosphere).
",descripcion_r:"Ejemplo ",created_date:"2013-01-29",updated_date:"2012-01-21")
 
Termino.create(nombre:"Bluejacking",categoria_id:"6",user_id:"1", descripcion_d:"Es cuando se usan teléfonos celulares con tecnología Bluetooth para enviar mensajes anónimos a otros teléfonos.
",descripcion_r:"Ejemplo ",created_date:"2013-01-29",updated_date:"2012-01-21")
 
Termino.create(nombre:"Bluesnarfing",categoria_id:"6",user_id:"1", descripcion_d:"Es el acceso no autorizado a la información guardada en teléfonos celulares, computadores y tabletas electrónicas fotos, videos, lista de contactos, mensajes de texto) usando una conexión de Bluetooth.
",descripcion_r:"Ejemplo ",created_date:"2013-01-29",updated_date:"2012-01-21")
 
Termino.create(nombre:"Bookmark",categoria_id:"7",user_id:"1", descripcion_d:"Herramienta de algunas aplicaciones, llamada anotación o marca de página, que almacena direcciones de páginas web que el usuario encontró útil y a la que quiere seguir accediendo fácilmente.
",descripcion_r:"Ejemplo ",created_date:"2013-01-29",updated_date:"2012-01-21")
 
Termino.create(nombre:"Boolean",categoria_id:"7",user_id:"1", descripcion_d:"Esta es la lógica que los computadores usan para determinar si una declaración es falsa o verdadera.
",descripcion_r:"Ejemplo ",created_date:"2013-01-29",updated_date:"2012-01-21")
 
Termino.create(nombre:"Browser",categoria_id:"7",user_id:"1", descripcion_d:"Aplicación para visualizar todo tipo de información y navegar por el www con funcionalidades plenamente multimedia. Como por ejemplo los navegadores Internet Explorer, Firefox, Chrome y Safari, entre otros.
",descripcion_r:"Ejemplo ",created_date:"2013-01-29",updated_date:"2012-01-21")
 
Termino.create(nombre:"Buscador",categoria_id:"7",user_id:"1", descripcion_d:"Los buscadores o motores de búsqueda, son aquellos que están diseñados para encontrar otros sitios o páginas Web. Existen dos tipos de buscadores, los spiders o arañas como Google y los directorios como Yahoo.
",descripcion_r:"Ejemplo ",created_date:"2013-01-29",updated_date:"2012-01-21")
 




 Termino.create(nombre:"Banner banner",categoria_id:"8",user_id:"1", descripcion_d:"Anuncio gráfico o animado que se encuentran en las páginas de Internet. Generalmente es usuado con fines publicitarios.
",descripcion_r:"Ejemplo ",created_date:"2013-01-29",updated_date:"2012-01-21")
 
Termino.create(nombre:"Base de ayudas ",categoria_id:"8",user_id:"1", descripcion_d:"Es un conjunto de datos que pertenecen al mismo contexto que se almacenan sistemáticamente. En una base de datos, la información se organiza en campos y registros.",descripcion_r:"Ejemplo ",created_date:"2013-01-29",updated_date:"2012-01-21")

Termino.create(nombre:"Blog de cosas ",categoria_id:"8",user_id:"1", descripcion_d:"Es un sitio web que se actualiza frecuentemente, y en el que se recopilan cronológicamente artículos o información que el autor quiera compartir.
",descripcion_r:"Ejemplo ",created_date:"2013-01-29",updated_date:"2012-01-21")

 Termino.create(nombre:"Blogósfera espacial",categoria_id:"9",user_id:"2", descripcion_d:"La suma de todos los blogs y sitios web relacionados a blogs forman la blogósfera (Blogosphere).
",descripcion_r:"Ejemplo ",created_date:"2013-01-29",updated_date:"2012-01-21")

 
Termino.create(nombre:"Bluej de casas",categoria_id:"9",user_id:"2", descripcion_d:"Es cuando se usan teléfonos celulares con tecnología Bluetooth para enviar mensajes anónimos a otros teléfonos.
",descripcion_r:"Ejemplo ",created_date:"2013-01-29",updated_date:"2012-01-21")
 
Termino.create(nombre:"Bluesnarfing amarrilla",categoria_id:"9",user_id:"2", descripcion_d:"Es el acceso no autorizado a la información guardada en teléfonos celulares, computadores y tabletas electrónicas (fotos, videos, lista de contactos, mensajes de texto) usando una conexión de Bluetooth.
",descripcion_r:"Ejemplo ",created_date:"2013-01-29",updated_date:"2012-01-21")
 
Termino.create(nombre:"Bookmark de sol",categoria_id:"9",user_id:"2", descripcion_d:"Herramienta de algunas aplicaciones, llamada anotación o marca de página, que almacena direcciones de páginas web que el usuario encontró útil y a la que quiere seguir accediendo fácilmente.
",descripcion_r:"Ejemplo ",created_date:"2013-01-29",updated_date:"2012-01-21")
 
Termino.create(nombre:"Boolean verdadero",categoria_id:"4",user_id:"2", descripcion_d:"Esta es la lógica que los computadores usan para determinar si una declaración es falsa o verdadera.
",descripcion_r:"Ejemplo ",created_date:"2013-01-29",updated_date:"2012-01-21")
 
Termino.create(nombre:"Browser dañado ",categoria_id:"4",user_id:"2", descripcion_d:"Aplicación para visualizar todo tipo de información y navegar por el www con funcionalidades plenamente multimedia. Como por ejemplo los navegadores Internet Explorer, Firefox, Chrome y Safari, entre otros.
",descripcion_r:"Ejemplo ",created_date:"2013-01-29",updated_date:"2012-01-21")
 
Termino.create(nombre:"Buscador Alocado",categoria_id:"4",user_id:"2", descripcion_d:"Los buscadores o motores de búsqueda, son aquellos que están diseñados para encontrar otros sitios o páginas Web. Existen dos tipos de buscadores, los spiders o arañas como Google y los directorios como Yahoo.",descripcion_r:"Ejemplo ",created_date:"2013-01-29",updated_date:"2012-01-21")

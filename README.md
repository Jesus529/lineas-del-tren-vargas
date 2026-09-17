 Breve descripción del código

El código es un programa en Swift que simula un sistema informativo del Metro de Lima que me permite al usuario consultar las líneas, visualizar sus estaciones, 
buscar una estación, obtener información de una línea, revisar preguntas frecuentes y consultar horarios 
todo esto se realiza mediante un menú interactivo,
donde el usuario selecciona una opción del 1 al 7. El programa continúa funcionando hasta que el usuario selecciona la opción “Salir”.



Requerimientos funcionales
Mostrar líneas: El sistema debe permitir al usuario visualizar las líneas del Metro de Lima registradas en el programa.
Mostrar estaciones: El sistema debe permitir al usuario seleccionar una línea y visualizar sus estaciones.
Buscar estación: El sistema debe permitir al usuario ingresar el nombre de una estación y mostrar si existe y a qué línea pertenece.
Información de una línea: El sistema debe permitir al usuario consultar información de una línea, como su ruta y cantidad de estaciones.
Preguntas frecuentes - HomeY: El sistema debe permitir al usuario consultar preguntas frecuentes sobre las líneas, estaciones y horarios del Metro de Lima.
Horarios de las líneas: El sistema debe permitir al usuario consultar los horarios y disponibilidad de servicio de cada línea registrada.

AQUI LAS PARTES DEL CODIGO "REQUERIMIENTOS"
Mostrar líneas
Corresponde a la función:
func mostrarLineas()
Se encarga de mostrar las 4 líneas usando un for y enumerated().

Mostrar estaciones
Corresponde a la función:
func mostrarEstaciones()
Utiliza un switch para mostrar las estaciones de la línea seleccionada.

Buscar estación
Corresponde a la función:
func buscarEstacion()
Utiliza lowercased() y contains() para buscar una estación sin importar si se escribe en mayúsculas o minúsculas.

Información de una línea
Corresponde a la función:
func informacionLinea()
Utiliza un switch para mostrar la ruta y la cantidad de estaciones de cada línea.
Preguntas frecuentes - HomeY
Corresponde a la función:
func homeY()
Permite seleccionar una pregunta y muestra la respuesta correspondiente mediante un switch.

Horarios de las líneas
Corresponde a la función:
func mostrarHorarios()
Muestra el horario de cada línea y utiliza un switch según la opción seleccionada.

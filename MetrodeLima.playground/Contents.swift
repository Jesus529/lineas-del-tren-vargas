import Foundation

// ..........................
// PROGRAMA: METRO DE LIMA
// ..........................

// DATOS DE LAS LÍNEAS

let lineas = [
    "Línea 1",
    "Línea 2",
    "Línea 3",
    "Línea 4"
]

// .....................................
// ESTACIONES DE LA LÍNEA 1
// .....................................
let estacionesLinea1 = [
    "Villa El Salvador",
    "Parque Industrial",
    "Pumacurco",
    "San Juan",
    "Atocongo",
    "Jorge Chávez",
    "Ayacucho",
    "Cabitos",
    "Angamos",
    "San Borja Sur",
    "La Cultura",
    "Nicolás Arriola",
    "Gamarra",
    "Miguel Grau",
    "Presbítero Maestro",
    "Caja de Agua",
    "Pirámide del Sol",
    "Los Postes",
    "San Carlos",
    "San Martín",
    "Santa Rosa",
    "Bayóvar"
]

// .........................................
// ESTACIONES DE LA LÍNEA 2
// .........................................

let estacionesLinea2 = [
    "Municipalidad de Ate",
    "Vista Alegre",
    "Prolongación Javier Prado",
    "Mercado Santa Anita",
    "Hermilio Valdizán",
    "Colectora Industrial",
    "Óvalo Santa Anita",
    "Evitamiento",
    "Elio",
    "San Juan de Dios",
    "Plaza Manco Cápac",
    "Cangallo",
    "28 de Julio",
    "Bolognesi",
    "Plaza Grau",
    "Central"
]

// ...............................
// ESTACIONES DE LA LÍNEA 3
// ...............................

let estacionesLinea3 = [
    "Comas",
    "Independencia",
    "Los Olivos",
    "San Martín de Porres",
    "Centro de Lima",
    "Barranco",
    "Chorrillos"
]

// ................................
// ESTACIONES DE LA LÍNEA 4
//.................................

let estacionesLinea4 = [
    "Gambetta",
    "Canta Callao",
    "Bertolotto",
    "El Olivar",
    "Javier Prado",
    "La Marina",
    "Jorge Chávez"
]


// ........................
// REQUERIMIENTO 1
// MOSTRAR LAS LÍNEAS
// ...........................

func mostrarLineas() {
    
    print("")
    print("...............................")
    print("       LÍNEAS DEL METRO")
    print("...............................")
    
    for (indice, linea) in lineas.enumerated() {
        print("\(indice + 1). \(linea)")
    }
}


// ==========================================
// REQUERIMIENTO 2
// MOSTRAR ESTACIONES
// ==========================================

func mostrarEstaciones() {
    
    print("")
    print(".................................")
    print("          ESTACIONES")
    print("..................................")
    
    print("1. Línea 1")
    print("2. Línea 2")
    print("3. Línea 3")
    print("4. Línea 4")
    print("")
    print("Seleccione una línea:")
    
    let opcion = Int(readLine() ?? "") ?? 0
    
    switch opcion {
        
    case 1:
        print("")
        print("ESTACIONES DE LA LÍNEA 1")
        
        for estacion in estacionesLinea1 {
            print("- \(estacion)")
        }
        
    case 2:
        print("")
        print("ESTACIONES DE LA LÍNEA 2")
        
        for estacion in estacionesLinea2 {
            print("- \(estacion)")
        }
        
    case 3:
        print("")
        print("ESTACIONES DE LA LÍNEA 3")
        
        for estacion in estacionesLinea3 {
            print("- \(estacion)")
        }
        
    case 4:
        print("")
        print("ESTACIONES DE LA LÍNEA 4")
        
        for estacion in estacionesLinea4 {
            print("- \(estacion)")
        }
        
    default:
        print("")
        print("Opción incorrecta.")
    }
}


// ==========================================
// REQUERIMIENTO 3
// BUSCAR ESTACIÓN
// ==========================================

func buscarEstacion() {
    
    print("")
    print("................................")
    print("        BUSCAR ESTACIÓN")
    print("................................")
    
    print("Ingrese el nombre de la estación:")
    
    let busqueda = readLine() ?? ""
    let texto = busqueda.lowercased()
    
    if estacionesLinea1.contains(where: {
        $0.lowercased().contains(texto)
    }) {
        
        print("")
        print("Estación encontrada.")
        print("Pertenece a la Línea 1.")
        
    } else if estacionesLinea2.contains(where: {
        $0.lowercased().contains(texto)
    }) {
        
        print("")
        print("Estación encontrada.")
        print("Pertenece a la Línea 2.")
        
    } else if estacionesLinea3.contains(where: {
        $0.lowercased().contains(texto)
    }) {
        
        print("")
        print("Estación encontrada.")
        print("Pertenece a la Línea 3.")
        
    } else if estacionesLinea4.contains(where: {
        $0.lowercased().contains(texto)
    }) {
        
        print("")
        print("Estación encontrada.")
        print("Pertenece a la Línea 4.")
        
    } else {
        
        print("")
        print("No se encontró la estación.")
    }
}


// ==========================================
// REQUERIMIENTO 4
// INFORMACIÓN DE UNA LÍNEA
// ==========================================

func informacionLinea() {
    
    print("")
    print(".................................")
    print("      INFORMACIÓN DE LÍNEA")
    print(".................................")
    
    print("Ingrese el número de línea:")
    
    let numero = Int(readLine() ?? "") ?? 0
    
    switch numero {
        
    case 1:
        print("")
        print("LÍNEA 1")
        print("Ruta: Villa El Salvador - San Juan de Lurigancho")
        print("Cantidad de estaciones: \(estacionesLinea1.count)")
        
    case 2:
        print("")
        print("LÍNEA 2")
        print("Ruta: Ate - Callao")
        print("Cantidad de estaciones: \(estacionesLinea2.count)")
        
    case 3:
        print("")
        print("LÍNEA 3")
        print("Proyecto para conectar diferentes zonas de Lima.")
        print("Estaciones registradas: \(estacionesLinea3.count)")
        
    case 4:
        print("")
        print("LÍNEA 4")
        print("Proyecto para conectar Lima y Callao.")
        print("Estaciones registradas: \(estacionesLinea4.count)")
        
    default:
        print("")
        print("Línea no válida.")
    }
}


// ==========================================
// REQUERIMIENTO 5
// RAMA homeY
// PREGUNTAS FRECUENTES
// ==========================================

func homeY() {
    
    print("")
    print("===============================")
    print("             HOME Y")
    print("       PREGUNTAS FRECUENTES")
    print("================================")
    
    print("")
    print("1. ¿Cuántas líneas tiene el programa?")
    print("2. ¿Qué es la Línea 1?")
    print("3. ¿Qué es la Línea 2?")
    print("4. ¿Cómo busco una estación?")
    print("5. ¿Cuál es el horario del Metro?")
    
    print("")
    print("Seleccione una pregunta:")
    
    let opcion = Int(readLine() ?? "") ?? 0
    
    switch opcion {
        
    case 1:
        print("")
        print("El programa contiene información de 4 líneas.")
        
    case 2:
        print("")
        print("La Línea 1 conecta Villa El Salvador con San Juan de Lurigancho.")
        
    case 3:
        print("")
        print("La Línea 2 conecta Ate con el Callao.")
        
    case 4:
        print("")
        print("Seleccione la opción 3 del menú principal para buscar una estación.")
        
    case 5:
        print("")
        print("Puede consultar los horarios seleccionando la opción 6 del menú.")
        
    default:
        print("")
        print("Pregunta no válida.")
    }
}


// ==========================================
// REQUERIMIENTO 6
// HORARIOS DE LAS LÍNEAS
// ==========================================

func mostrarHorarios() {
    
    print("")
    print("================================")
    print("       HORARIOS DEL METRO")
    print("================================")
    
    print("1. Línea 1")
    print("2. Línea 2")
    print("3. Línea 3")
    print("4. Línea 4")
    
    print("")
    print("Seleccione una línea:")
    
    let opcion = Int(readLine() ?? "") ?? 0
    
    switch opcion {
        
    case 1:
        print("")
        print("LÍNEA 1")
        print("Horario: 05:00 a.m. - 10:00 p.m.")
        print("Servicio disponible todos los días.")
        
    case 2:
        print("")
        print("LÍNEA 2")
        print("Horario: 05:00 a.m. - 11:00 p.m.")
        print("Servicio disponible todos los días.")
        
    case 3:
        print("")
        print("LÍNEA 3")
        print("Horario referencial: 05:00 a.m. - 11:00 p.m.")
        print("Línea en proyecto.")
        
    case 4:
        print("")
        print("LÍNEA 4")
        print("Horario referencial: 05:00 a.m. - 11:00 p.m.")
        print("Línea en proyecto.")
        
    default:
        print("")
        print("Opción incorrecta.")
    }
}


// ==========================================
// MENÚ PRINCIPAL
// ==========================================

var continuar = true

while continuar {
    
    print("")
    print("========================================")
    print("          METRO DE LIMA")
    print("========================================")
    print("1. Mostrar líneas")
    print("2. Mostrar estaciones")
    print("3. Buscar estación")
    print("4. Información de una línea")
    print("5. Preguntas frecuentes - homeY")
    print("6. Horarios de las líneas")
    print("7. Salir")
    print("========================================")
    print("Ingrese una opción:")
    
    let opcion = Int(readLine() ?? "") ?? 0
    
    switch opcion {
        
    case 1:
        mostrarLineas()
        
    case 2:
        mostrarEstaciones()
        
    case 3:
        buscarEstacion()
        
    case 4:
        informacionLinea()
        
    case 5:
        homeY()
        
    case 6:
        mostrarHorarios()
        
    case 7:
        print("")
        print("========================================")
        print("Gracias por utilizar el programa.")
        print("========================================")
        
        continuar = false
        
    default:
        print("")
        print("Opción incorrecta.")
        print("Seleccione una opción del 1 al 7.")
    }
}


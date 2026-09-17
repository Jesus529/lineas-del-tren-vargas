import Foundation

// ======================================================
// ESTRUCTURA DE UNA LINEA
// ======================================================

struct Linea {
    var nombre: String
    var estaciones: [String]
}

// ======================================================
// SISTEMA METRO DE LIMA
// ======================================================

final class MetroLima {
    
    // --------------------------------------------------
    // LINEAS Y ESTACIONES DEL METRO
    // --------------------------------------------------
    
    var lineas: [Linea] = [
        
        Linea(
            nombre: "Linea 1",
            estaciones: [
                "Villa El Salvador",
                "Parque Industrial",
                "Pumacurco",
                "San Juan",
                "Atocongo",
                "Jorge Chavez",
                "Ayacucho",
                "Cabitos",
                "Angamos",
                "San Borja Sur",
                "La Cultura",
                "Nicolas Arriola",
                "Gamarra",
                "Miguel Grau",
                "Presbitero Maestro",
                "Caja de Agua",
                "Piramide del Sol",
                "Los Postes",
                "San Carlos",
                "San Martin",
                "Santa Rosa",
                "Bayovar"
            ]
        ),
        
        Linea(
            nombre: "Linea 2",
            estaciones: [
                "Municipalidad de Ate",
                "Vista Alegre",
                "Prolongacion Javier Prado",
                "Mercado Santa Anita",
                "Hermilio Valdizan",
                "Colectora Industrial",
                "Ovalo Santa Anita",
                "Evitamiento",
                "Elio",
                "San Juan de Dios",
                "Plaza Manco Capac",
                "Cangallo",
                "28 de Julio",
                "Bolognesi",
                "Plaza Grau",
                "Central"
            ]
        ),
        
        Linea(
            nombre: "Linea 3",
            estaciones: [
                "Comas",
                "Independencia",
                "Los Olivos",
                "San Martin de Porres",
                "Centro de Lima",
                "Barranco",
                "Chorrillos"
            ]
        ),
        
        Linea(
            nombre: "Linea 4",
            estaciones: [
                "Gambetta",
                "Canta Callao",
                "Bertolotto",
                "El Olivar",
                "Javier Prado",
                "La Marina",
                "Jorge Chavez"
            ]
        )
    ]
    
    // --------------------------------------------------
    // DATOS DE LA TARJETA
    // --------------------------------------------------
    
    var saldoTarjeta: Double = 10.00
    let precioViaje: Double = 1.50
    
    // ==================================================
    // FUNCION PARA MOSTRAR TITULOS
    // ==================================================
    
    func mostrarTitulo(_ titulo: String) {
        print("")
        print("==================================================")
        print("              \(titulo)")
        print("==================================================")
    }
    
    // ==================================================
    // FUNCION PARA OBTENER ESTACIONES DE UNA LINEA
    // ==================================================
    
    func obtenerEstaciones(_ numeroLinea: Int) -> [String] {
        
        if numeroLinea >= 1 && numeroLinea <= lineas.count {
            return lineas[numeroLinea - 1].estaciones
        }
        
        return []
    }
    
    // ==================================================
    // NORMALIZAR TEXTO
    // Permite buscar sin importar mayusculas/minusculas
    // ==================================================
    
    func normalizar(_ texto: String) -> String {
        return texto
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .lowercased()
    }
    
    // ==================================================
    // 1. MOSTRAR LINEAS
    // ==================================================
    
    func mostrarLineas() {
        
        mostrarTitulo("LINEAS DEL METRO DE LIMA")
        
        for (indice, linea) in lineas.enumerated() {
            print("\(indice + 1). \(linea.nombre)")
        }
        
        print("")
    }
    
    // ==================================================
    // 2. MOSTRAR ESTACIONES
    // ==================================================
    
    func mostrarEstaciones() {
        
        mostrarTitulo("ESTACIONES")
        
        for (indice, linea) in lineas.enumerated() {
            
            print("")
            print("\(indice + 1). \(linea.nombre)")
            print("------------------------------------------")
            
            for (posicion, estacion) in linea.estaciones.enumerated() {
                print("\(posicion + 1). \(estacion)")
            }
        }
        
        print("")
    }
    
    // ==================================================
    // 3. BUSCAR ESTACION
    // ==================================================
    
    func buscarEstacion() {
        
        mostrarTitulo("BUSCAR ESTACION")
        
        print("Ingrese el nombre de la estacion:")
        
        guard let entrada = readLine(), !entrada.isEmpty else {
            print("Nombre no valido.")
            return
        }
        
        let buscada = normalizar(entrada)
        var encontrada = false
        
        for (indice, linea) in lineas.enumerated() {
            
            for estacion in linea.estaciones {
                
                if normalizar(estacion) == buscada {
                    
                    print("")
                    print("Estacion encontrada")
                    print("Estacion: \(estacion)")
                    print("Linea: \(linea.nombre)")
                    
                    encontrada = true
                }
            }
        }
        
        if !encontrada {
            print("")
            print("No se encontro la estacion.")
        }
    }
    
    // ==================================================
    // ENCONTRAR ESTACION
    // ==================================================
    
    func encontrarEstacion(_ nombre: String) -> [(linea: Int, posicion: Int, nombre: String)] {
        
        let buscada = normalizar(nombre)
        
        var resultados: [(linea: Int, posicion: Int, nombre: String)] = []
        
        for (indiceLinea, linea) in lineas.enumerated() {
            
            for (indiceEstacion, estacion) in linea.estaciones.enumerated() {
                
                if normalizar(estacion) == buscada {
                    
                    resultados.append(
                        (
                            linea: indiceLinea + 1,
                            posicion: indiceEstacion,
                            nombre: estacion
                        )
                    )
                }
            }
        }
        
        return resultados
    }
    
    // ==================================================
    // 4. INFORMACION DE UNA LINEA
    // ==================================================
    
    func informacionLinea() {
        
        mostrarTitulo("INFORMACION DE UNA LINEA")
        
        mostrarLineas()
        
        print("Seleccione una linea:")
        
        guard let entrada = readLine(),
              let numero = Int(entrada),
              numero >= 1,
              numero <= lineas.count else {
            
            print("Linea no valida.")
            return
        }
        
        let linea = lineas[numero - 1]
        
        print("")
        print("Linea: \(linea.nombre)")
        print("Cantidad de estaciones: \(linea.estaciones.count)")
        
        print("")
        print("Estaciones:")
        
        for (indice, estacion) in linea.estaciones.enumerated() {
            print("\(indice + 1). \(estacion)")
        }
    }
    
    // ==================================================
    // 5. DONDE ME ENCUENTRO
    // Muestra estaciones siguientes, anteriores y
    // posibles conexiones.
    // ==================================================
    
    func estacionActual() {
        
        mostrarTitulo("DONDE ME ENCUENTRO")
        
        print("Ingrese la estacion donde se encuentra:")
        
        guard let entrada = readLine(), !entrada.isEmpty else {
            print("Estacion no valida.")
            return
        }
        
        let resultados = encontrarEstacion(entrada)
        
        if resultados.isEmpty {
            
            print("")
            print("No se encontro la estacion.")
            return
        }
        
        for resultado in resultados {
            
            let numeroLinea = resultado.linea
            let posicion = resultado.posicion
            let estaciones = lineas[numeroLinea - 1].estaciones
            
            print("")
            print("Estacion actual: \(resultado.nombre)")
            print("Linea: \(lineas[numeroLinea - 1].nombre)")
            
            // Estaciones siguientes
            print("")
            print("SIGUIENTES ESTACIONES:")
            
            if posicion < estaciones.count - 1 {
                
                let limite = min(posicion + 5, estaciones.count - 1)
                
                for i in (posicion + 1)...limite {
                    print("- \(estaciones[i])")
                }
                
            } else {
                print("- Fin de la linea")
            }
            
            // Estaciones anteriores
            print("")
            print("ESTACIONES ANTERIORES:")
            
            if posicion > 0 {
                
                let inicio = max(0, posicion - 5)
                
                for i in stride(from: posicion - 1, through: inicio, by: -1) {
                    print("- \(estaciones[i])")
                }
                
            } else {
                print("- Inicio de la linea")
            }
            
            // Mostrar conexiones
            mostrarConexiones(
                nombreEstacion: resultado.nombre,
                lineaActual: numeroLinea
            )
        }
    }
    
    // ==================================================
    // MOSTRAR CONEXIONES
    // ==================================================
    
    func mostrarConexiones(nombreEstacion: String, lineaActual: Int) {
        
        var conexiones: [String] = []
        
        for (indice, linea) in lineas.enumerated() {
            
            if indice + 1 == lineaActual {
                continue
            }
            
            for estacion in linea.estaciones {
                
                if normalizar(estacion) == normalizar(nombreEstacion) {
                    conexiones.append(linea.nombre)
                }
            }
        }
        
        print("")
        print("CONEXIONES:")
        
        if conexiones.isEmpty {
            print("No hay conexiones registradas.")
        } else {
            
            for conexion in conexiones {
                print("- Puedes conectar con \(conexion)")
            }
        }
    }
    
    // ==================================================
    // 6. PLANIFICACION DE VIAJE
    // Calcula estaciones restantes y conexiones.
    // ==================================================
    
    func planificarViaje() {
        
        mostrarTitulo("PLANIFICACION DE VIAJE")
        
        print("Ingrese estacion de origen:")
        
        guard let origen = readLine(), !origen.isEmpty else {
            print("Origen no valido.")
            return
        }
        
        print("Ingrese estacion de destino:")
        
        guard let destino = readLine(), !destino.isEmpty else {
            print("Destino no valido.")
            return
        }
        
        let origenes = encontrarEstacion(origen)
        let destinos = encontrarEstacion(destino)
        
        if origenes.isEmpty {
            print("")
            print("No se encontro la estacion de origen.")
            return
        }
        
        if destinos.isEmpty {
            print("")
            print("No se encontro la estacion de destino.")
            return
        }
        
        // --------------------------------------------------
        // CASO 1: MISMA LINEA
        // --------------------------------------------------
        
        for inicio in origenes {
            
            for fin in destinos {
                
                if inicio.linea == fin.linea {
                    
                    let estaciones = lineas[inicio.linea - 1].estaciones
                    
                    let cantidad = abs(
                        fin.posicion - inicio.posicion
                    )
                    
                    print("")
                    print("RUTA ENCONTRADA")
                    print("------------------------------------------")
                    print("Linea: \(lineas[inicio.linea - 1].nombre)")
                    print("Origen: \(inicio.nombre)")
                    print("Destino: \(fin.nombre)")
                    print("Estaciones restantes: \(cantidad)")
                    
                    print("")
                    print("RECORRIDO:")
                    
                    if inicio.posicion <= fin.posicion {
                        
                        for i in inicio.posicion...fin.posicion {
                            print("- \(estaciones[i])")
                        }
                        
                    } else {
                        
                        for i in stride(
                            from: inicio.posicion,
                            through: fin.posicion,
                            by: -1
                        ) {
                            print("- \(estaciones[i])")
                        }
                    }
                    
                    return
                }
            }
        }
        
        // --------------------------------------------------
        // CASO 2: DIFERENTES LINEAS
        // --------------------------------------------------
        
        print("")
        print("Las estaciones estan en diferentes lineas.")
        print("Buscando una estacion de conexion...")
        
        for inicio in origenes {
            
            for fin in destinos {
                
                let lineaOrigen = lineas[inicio.linea - 1].estaciones
                let lineaDestino = lineas[fin.linea - 1].estaciones
                
                for (posOrigen, conexionOrigen) in lineaOrigen.enumerated() {
                    
                    for (posDestino, conexionDestino) in lineaDestino.enumerated() {
                        
                        if normalizar(conexionOrigen) ==
                            normalizar(conexionDestino) {
                            
                            let tramo1 = abs(
                                posOrigen - inicio.posicion
                            )
                            
                            let tramo2 = abs(
                                fin.posicion - posDestino
                            )
                            
                            print("")
                            print("RUTA ENCONTRADA")
                            print("------------------------------------------")
                            print("Linea de origen: \(lineas[inicio.linea - 1].nombre)")
                            print("Linea de destino: \(lineas[fin.linea - 1].nombre)")
                            print("Estacion de conexion: \(conexionOrigen)")
                            print("Estaciones hasta conexion: \(tramo1)")
                            print("Estaciones despues de conexion: \(tramo2)")
                            print("Total de estaciones: \(tramo1 + tramo2)")
                            
                            print("")
                            print("PRIMER TRAMO:")
                            
                            if inicio.posicion <= posOrigen {
                                
                                for i in inicio.posicion...posOrigen {
                                    print("- \(lineaOrigen[i])")
                                }
                                
                            } else {
                                
                                for i in stride(
                                    from: inicio.posicion,
                                    through: posOrigen,
                                    by: -1
                                ) {
                                    print("- \(lineaOrigen[i])")
                                }
                            }
                            
                            print("")
                            print("CAMBIO DE LINEA EN: \(conexionOrigen)")
                            
                            print("")
                            print("SEGUNDO TRAMO:")
                            
                            if posDestino <= fin.posicion {
                                
                                for i in posDestino...fin.posicion {
                                    print("- \(lineaDestino[i])")
                                }
                                
                            } else {
                                
                                for i in stride(
                                    from: posDestino,
                                    through: fin.posicion,
                                    by: -1
                                ) {
                                    print("- \(lineaDestino[i])")
                                }
                            }
                            
                            return
                        }
                    }
                }
            }
        }
        
        print("")
        print("No existe una conexion registrada entre esas lineas.")
    }
    
    // ==================================================
    // 7. TARJETA DE TRANSPORTE
    // Permite consultar, recargar y realizar viajes.
    // ==================================================
    
    func consultarSaldo() {
        
        mostrarTitulo("SALDO DE TARJETA")
        
        print(
            String(
                format: "Saldo actual: S/ %.2f",
                saldoTarjeta
            )
        )
    }
    
    func recargarTarjeta() {
        
        mostrarTitulo("RECARGAR TARJETA")
        
        print("Ingrese el monto a recargar:")
        
        guard let entrada = readLine(),
              let monto = Double(entrada),
              monto > 0 else {
            
            print("Monto no valido.")
            return
        }
        
        saldoTarjeta += monto
        
        print("")
        print("Recarga realizada correctamente.")
        
        print(
            String(
                format: "Nuevo saldo: S/ %.2f",
                saldoTarjeta
            )
        )
    }
    
    func realizarViaje() {
        
        mostrarTitulo("REALIZAR VIAJE")
        
        print(
            String(
                format: "Precio del viaje: S/ %.2f",
                precioViaje
            )
        )
        
        print(
            String(
                format: "Saldo actual: S/ %.2f",
                saldoTarjeta
            )
        )
        
        if saldoTarjeta < precioViaje {
            
            print("")
            print("Saldo insuficiente.")
            print("Realice una recarga.")
            return
        }
        
        saldoTarjeta -= precioViaje
        
        print("")
        print("Viaje realizado correctamente.")
        
        print(
            String(
                format: "Saldo restante: S/ %.2f",
                saldoTarjeta
            )
        )
    }
    
    func menuTarjeta() {
        
        var continuar = true
        
        while continuar {
            
            mostrarTitulo("TARJETA DE TRANSPORTE")
            
            print("1. Consultar saldo")
            print("2. Recargar tarjeta")
            print("3. Realizar viaje")
            print("4. Volver")
            
            print("")
            print("Seleccione una opcion:")
            
            guard let entrada = readLine(),
                  let opcion = Int(entrada) else {
                
                print("Opcion no valida.")
                continue
            }
            
            switch opcion {
                
            case 1:
                consultarSaldo()
                
            case 2:
                recargarTarjeta()
                
            case 3:
                realizarViaje()
                
            case 4:
                continuar = false
                
            default:
                print("Opcion no valida.")
            }
        }
    }
    
    // ==================================================
    // 8. PREGUNTAS FRECUENTES
    // ==================================================
    
    func preguntasFrecuentes() {
        
        mostrarTitulo("PREGUNTAS FRECUENTES")
        
        print("1. ¿Cuanto cuesta un viaje?")
        print("   El precio configurado es S/ 1.50.")
        
        print("")
        print("2. ¿Puedo recargar mi tarjeta?")
        print("   Si, desde Tarjeta de transporte.")
        
        print("")
        print("3. ¿Puedo saber las estaciones cercanas?")
        print("   Si, usando Donde me encuentro.")
        
        print("")
        print("4. ¿Puedo planificar un viaje?")
        print("   Si, usando Planificacion de viaje.")
        
        print("")
        print("5. ¿Puedo buscar una estacion?")
        print("   Si, usando Buscar estacion.")
    }
    
    // ==================================================
    // 9. HORARIOS
    // ==================================================
    
    func mostrarHorarios() {
        
        mostrarTitulo("HORARIOS")
        
        print("Lunes a Viernes: 05:30 - 22:00")
        print("Sabados:         05:30 - 22:00")
        print("Domingos:        06:00 - 22:00")
    }
    
    // ==================================================
    // 10. MODO ADMINISTRADOR
    // ==================================================
    
    func modoAdministrador() {
        
        mostrarTitulo("MODO ADMINISTRADOR")
        
        print("Ingrese la contraseña:")
        
        guard let password = readLine() else {
            return
        }
        
        if password != "1234" {
            
            print("")
            print("Contraseña incorrecta.")
            return
        }
        
        print("")
        print("Acceso autorizado.")
        
        menuAdministrador()
    }
    
    // ==================================================
    // MENU ADMINISTRADOR
    // ==================================================
    
    func menuAdministrador() {
        
        var continuar = true
        
        while continuar {
            
            mostrarTitulo("MENU ADMINISTRADOR")
            
            print("1. Agregar estacion")
            print("2. Insertar estacion")
            print("3. Crear linea")
            print("4. Crear estacion de conexion")
            print("5. Ver estaciones")
            print("6. Volver")
            
            print("")
            print("Seleccione una opcion:")
            
            guard let entrada = readLine(),
                  let opcion = Int(entrada) else {
                
                print("Opcion no valida.")
                continue
            }
            
            switch opcion {
                
            case 1:
                agregarEstacion()
                
            case 2:
                insertarEstacion()
                
            case 3:
                crearLinea()
                
            case 4:
                crearEstacionConexion()
                
            case 5:
                mostrarEstaciones()
                
            case 6:
                continuar = false
                
            default:
                print("Opcion no valida.")
            }
        }
    }
    
    // ==================================================
    // AGREGAR ESTACION
    // ==================================================
    
    func agregarEstacion() {
        
        mostrarTitulo("AGREGAR ESTACION")
        
        mostrarLineas()
        
        print("Seleccione la linea:")
        
        guard let entrada = readLine(),
              let numeroLinea = Int(entrada),
              numeroLinea >= 1,
              numeroLinea <= lineas.count else {
            
            print("Linea no valida.")
            return
        }
        
        print("Ingrese el nombre de la nueva estacion:")
        
        guard let nombre = readLine(),
              !nombre.isEmpty else {
            
            print("Nombre no valido.")
            return
        }
        
        lineas[numeroLinea - 1].estaciones.append(nombre)
        
        print("")
        print("Estacion agregada correctamente.")
        print("Linea: \(lineas[numeroLinea - 1].nombre)")
        print("Estacion: \(nombre)")
    }
    
    // ==================================================
    // INSERTAR ESTACION
    // ==================================================
    
    func insertarEstacion() {
        
        mostrarTitulo("INSERTAR ESTACION")
        
        mostrarLineas()
        
        print("Seleccione la linea:")
        
        guard let entrada = readLine(),
              let numeroLinea = Int(entrada),
              numeroLinea >= 1,
              numeroLinea <= lineas.count else {
            
            print("Linea no valida.")
            return
        }
        
        print("")
        print("Estaciones actuales:")
        
        for (indice, estacion) in lineas[numeroLinea - 1].estaciones.enumerated() {
            print("\(indice + 1). \(estacion)")
        }
        
        print("")
        print("Ingrese la posicion:")
        
        guard let posicionEntrada = readLine(),
              let posicion = Int(posicionEntrada),
              posicion >= 1,
              posicion <= lineas[numeroLinea - 1].estaciones.count + 1 else {
            
            print("Posicion no valida.")
            return
        }
        
        print("Ingrese el nombre de la nueva estacion:")
        
        guard let nombre = readLine(),
              !nombre.isEmpty else {
            
            print("Nombre no valido.")
            return
        }
        
        lineas[numeroLinea - 1].estaciones.insert(
            nombre,
            at: posicion - 1
        )
        
        print("")
        print("Estacion insertada correctamente.")
    }
    
    // ==================================================
    // CREAR NUEVA LINEA
    // ==================================================
    
    func crearLinea() {
        
        mostrarTitulo("CREAR NUEVA LINEA")
        
        print("Ingrese el nombre de la nueva linea:")
        
        guard let nombre = readLine(),
              !nombre.isEmpty else {
            
            print("Nombre no valido.")
            return
        }
        
        // Verificamos que no exista otra igual
        for linea in lineas {
            
            if normalizar(linea.nombre) == normalizar(nombre) {
                
                print("")
                print("Esa linea ya existe.")
                return
            }
        }
        
        lineas.append(
            Linea(
                nombre: nombre,
                estaciones: []
            )
        )
        
        print("")
        print("Nueva linea creada correctamente.")
        print("Linea: \(nombre)")
    }
    
    // ==================================================
    // CREAR ESTACION DE CONEXION
    // ==================================================
    
    func crearEstacionConexion() {
        
        mostrarTitulo("CREAR ESTACION DE CONEXION")
        
        if lineas.count < 2 {
            
            print("Se necesitan al menos dos lineas.")
            return
        }
        
        mostrarLineas()
        
        print("Seleccione la primera linea:")
        
        guard let entrada1 = readLine(),
              let linea1 = Int(entrada1),
              linea1 >= 1,
              linea1 <= lineas.count else {
            
            print("Linea no valida.")
            return
        }
        
        print("Seleccione la segunda linea:")
        
        guard let entrada2 = readLine(),
              let linea2 = Int(entrada2),
              linea2 >= 1,
              linea2 <= lineas.count,
              linea2 != linea1 else {
            
            print("Linea no valida.")
            return
        }
        
        print("Ingrese el nombre de la estacion de conexion:")
        
        guard let nombre = readLine(),
              !nombre.isEmpty else {
            
            print("Nombre no valido.")
            return
        }
        
        // La misma estacion se registra en las dos lineas
        lineas[linea1 - 1].estaciones.append(nombre)
        lineas[linea2 - 1].estaciones.append(nombre)
        
        print("")
        print("Estacion de conexion creada correctamente.")
        print("Estacion: \(nombre)")
        print("")
        print("Conecta:")
        print("- \(lineas[linea1 - 1].nombre)")
        print("- \(lineas[linea2 - 1].nombre)")
    }
    
    // ==================================================
    // MENU PRINCIPAL
    // ==================================================
    
    func iniciar() {
        
        var continuar = true
        
        while continuar {
            
            mostrarTitulo("METRO DE LIMA")
            
            print("1. Mostrar lineas")
            print("2. Mostrar estaciones")
            print("3. Buscar estacion")
            print("4. Informacion de una linea")
            print("5. ¿Donde me encuentro?")
            print("6. Planificar viaje")
            print("7. Tarjeta de transporte")
            print("8. Preguntas frecuentes")
            print("9. Horarios")
            print("10. Administrador")
            print("11. Salir")
            
            print("")
            print("Ingrese una opcion:")
            
            guard let entrada = readLine(),
                  let opcion = Int(entrada) else {
                
                print("")
                print("Ingrese una opcion valida.")
                continue
            }
            
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
                estacionActual()
                
            case 6:
                planificarViaje()
                
            case 7:
                menuTarjeta()
                
            case 8:
                preguntasFrecuentes()
                
            case 9:
                mostrarHorarios()
                
            case 10:
                modoAdministrador()
                
            case 11:
                print("")
                print("Gracias por usar el sistema Metro de Lima.")
                continuar = false
                
            default:
                print("")
                print("Opcion no valida.")
            }
            
            if continuar {
                
                print("")
                print("Presione ENTER para continuar...")
                _ = readLine()
            }
        }
    }
}

// ======================================================
// INICIO DEL PROGRAMA
// ======================================================

let metro = MetroLima()
metro.iniciar()

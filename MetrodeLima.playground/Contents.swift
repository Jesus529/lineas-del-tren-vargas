import Foundation

// ==========================================
// ESTRUCTURA DE UNA LINEA
// ==========================================

struct Linea {
    var nombre: String
    var estaciones: [String]
}

// ==========================================
// SISTEMA METRO DE LIMA
// ==========================================

final class MetroLima {

    // ==========================================
    // LINEAS Y ESTACIONES
    // ==========================================

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

    // ==========================================
    // TARJETA
    // ==========================================

    var saldoTarjeta: Double = 10.00
    let precioViaje: Double = 1.50

    // ==========================================
    // PERSONAS POR ESTACION
    // ==========================================

    var personasPorEstacion: [String: Int] = [

        "Villa El Salvador": 850,
        "Parque Industrial": 620,
        "Pumacurco": 500,
        "San Juan": 900,
        "Atocongo": 1200,
        "Jorge Chavez": 1500,
        "Ayacucho": 1100,
        "Cabitos": 1000,
        "Angamos": 1800,
        "San Borja Sur": 1300,
        "La Cultura": 2000,
        "Nicolas Arriola": 900,
        "Gamarra": 3500,
        "Miguel Grau": 2200,
        "Presbitero Maestro": 800,
        "Caja de Agua": 900,
        "Piramide del Sol": 1100,
        "Los Postes": 1000,
        "San Carlos": 950,
        "San Martin": 1400,
        "Santa Rosa": 1200,
        "Bayovar": 1400,

        "Municipalidad de Ate": 1000,
        "Vista Alegre": 900,
        "Prolongacion Javier Prado": 1200,
        "Mercado Santa Anita": 1900,
        "Hermilio Valdizan": 800,
        "Colectora Industrial": 700,
        "Ovalo Santa Anita": 1800,
        "Evitamiento": 1300,
        "Elio": 900,
        "San Juan de Dios": 1000,
        "Plaza Manco Capac": 1500,
        "Cangallo": 900,
        "28 de Julio": 2100,
        "Bolognesi": 1200,
        "Plaza Grau": 1900,
        "Central": 3000,

        "Comas": 1700,
        "Independencia": 1600,
        "Los Olivos": 1800,
        "San Martin de Porres": 2000,
        "Centro de Lima": 3500,
        "Barranco": 1300,
        "Chorrillos": 1800,

        "Gambetta": 800,
        "Canta Callao": 900,
        "Bertolotto": 700,
        "El Olivar": 850,
        "Javier Prado": 2200,
        "La Marina": 1900
    ]

    // ==========================================
    // DESCRIPCIONES
    // ==========================================

    var descripcionesEstaciones: [String: String] = [

        "Villa El Salvador":
            "Estacion ubicada en Villa El Salvador. Cuenta con bastante movimiento de pasajeros y diferentes accesos hacia la zona.",

        "Parque Industrial":
            "Estacion cercana a una zona industrial y comercial. Tiene movimiento de trabajadores y pasajeros durante el dia.",

        "Atocongo":
            "Estacion ubicada en una zona comercial del sur de Lima. Tiene bastante movimiento de pasajeros.",

        "Jorge Chavez":
            "Estacion importante de la Linea 1 y punto de conexion registrado con otra linea.",

        "Ayacucho":
            "Estacion ubicada cerca de zonas residenciales y comerciales. Durante las horas punta puede tener bastante movimiento.",

        "Angamos":
            "Estacion cercana a zonas comerciales, oficinas y avenidas principales.",

        "La Cultura":
            "Estacion ubicada cerca de importantes zonas culturales, educativas y comerciales.",

        "Gamarra":
            "Una de las estaciones con mayor movimiento. La zona es conocida por sus comercios, galerias y tiendas.",

        "Miguel Grau":
            "Estacion cercana a avenidas importantes y zonas comerciales del centro de Lima.",

        "Bayovar":
            "Estacion final de la Linea 1. Atiende a pasajeros de diferentes zonas de San Juan de Lurigancho.",

        "Municipalidad de Ate":
            "Estacion ubicada en Ate. Permite el acceso de pasajeros de diferentes zonas del distrito.",

        "Mercado Santa Anita":
            "Estacion cercana a una importante zona comercial y recibe gran cantidad de pasajeros.",

        "Ovalo Santa Anita":
            "Estacion ubicada cerca de una zona de bastante movimiento vehicular y comercial.",

        "28 de Julio":
            "Estacion importante de la Linea 2 y permite el desplazamiento hacia diferentes zonas.",

        "Plaza Grau":
            "Estacion cercana a importantes vias y zonas del centro de Lima.",

        "Central":
            "Estacion importante de la Linea 2 y una de las zonas con mayor movimiento.",

        "Comas":
            "Estacion ubicada en el norte de Lima y atiende a pasajeros de la zona de Comas.",

        "Independencia":
            "Estacion ubicada en una zona comercial y residencial del norte de Lima.",

        "Los Olivos":
            "Estacion ubicada en una zona residencial y comercial con bastante movimiento.",

        "Centro de Lima":
            "Estacion cercana a diferentes puntos historicos y comerciales del centro de Lima.",

        "Barranco":
            "Estacion cercana a una zona turistica y cultural con restaurantes y espacios artisticos.",

        "Chorrillos":
            "Estacion ubicada en el sur de Lima y atiende diferentes zonas residenciales.",

        "Gambetta":
            "Estacion ubicada en la zona del Callao.",

        "Canta Callao":
            "Estacion cercana a importantes avenidas del Callao.",

        "Javier Prado":
            "Estacion cercana a una de las avenidas principales de Lima.",

        "La Marina":
            "Estacion cercana a una zona comercial y a importantes avenidas."
    ]

    // ==========================================
    // TITULO
    // ==========================================

    func mostrarTitulo() {

        print("")
        print("==============================================")
        print("               METRO DE LIMA")
        print("==============================================")
    }

    // ==========================================
    // NORMALIZAR
    // ==========================================

    func normalizar(_ texto: String) -> String {

        return texto
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .lowercased()
    }

    // ==========================================
    // MOSTRAR LINEAS
    // ==========================================

    func mostrarLineas() {

        mostrarTitulo()

        print("\nLINEAS DISPONIBLES")

        for (indice, linea) in lineas.enumerated() {

            print("\(indice + 1). \(linea.nombre)")
        }
    }

    // ==========================================
    // MOSTRAR TODAS LAS ESTACIONES
    // ==========================================

    func mostrarEstaciones() {

        mostrarTitulo()

        for (indice, linea) in lineas.enumerated() {

            print("\n==========================================")
            print("\(indice + 1). \(linea.nombre)")
            print("==========================================")

            for (posicion, estacion) in linea.estaciones.enumerated() {

                print("\(posicion + 1). \(estacion)")
            }
        }
    }

    // ==========================================
    // MOSTRAR ESTACIONES DE UNA LINEA
    // ==========================================

    func mostrarEstacionesDeLinea(_ numeroLinea: Int) {

        guard numeroLinea >= 1 &&
              numeroLinea <= lineas.count else {

            return
        }

        let linea = lineas[numeroLinea - 1]

        print("\n==========================================")
        print("              \(linea.nombre)")
        print("==========================================")

        for (indice, estacion) in linea.estaciones.enumerated() {

            print("\(indice + 1). \(estacion)")
        }
    }

    // ==========================================
    // ELEGIR ESTACION
    // ==========================================

    func elegirEstacion(
        numeroLinea: Int,
        mensaje: String
    ) -> Int? {

        guard numeroLinea >= 1 &&
              numeroLinea <= lineas.count else {

            return nil
        }

        let estaciones = lineas[numeroLinea - 1].estaciones

        print("\n\(mensaje)")

        guard let entrada = readLine(),
              let numero = Int(entrada),
              numero >= 1,
              numero <= estaciones.count else {

            print("Numero de estacion invalido.")
            return nil
        }

        return numero - 1
    }

    // ==========================================
    // BUSCAR ESTACION
    // ==========================================

    func buscarEstacion() {

        print("\n===== BUSCAR ESTACION =====")

        print("Ingrese el nombre de la estacion:")

        let nombre = readLine() ?? ""

        var encontrada = false

        for (indice, linea) in lineas.enumerated() {

            for (posicion, estacion) in linea.estaciones.enumerated() {

                if normalizar(estacion) == normalizar(nombre) {

                    print("\nEstacion encontrada.")
                    print("Estacion: \(estacion)")
                    print("Linea: \(linea.nombre)")
                    print("Posicion: \(posicion + 1)")

                    encontrada = true
                }
            }

            _ = indice
        }

        if !encontrada {

            print("\nNo se encontro la estacion.")
        }
    }

    // ==========================================
    // ENCONTRAR ESTACION
    // ==========================================

    func encontrarEstacion(
        _ nombre: String
    ) -> (linea: Int, posicion: Int)? {

        for (indiceLinea, linea) in lineas.enumerated() {

            for (posicion, estacion) in linea.estaciones.enumerated() {

                if normalizar(estacion) == normalizar(nombre) {

                    return (indiceLinea, posicion)
                }
            }
        }

        return nil
    }

    // ==========================================
    // INFORMACION DE LINEA
    // ==========================================

    func informacionLinea() {

        print("\n===== INFORMACION DE LINEA =====")

        mostrarLineas()

        print("\nIngrese el numero de linea:")

        guard let entrada = readLine(),
              let numero = Int(entrada),
              numero >= 1,
              numero <= lineas.count else {

            print("Numero de linea invalido.")
            return
        }

        let linea = lineas[numero - 1]

        print("\nLINEA SELECCIONADA")
        print("--------------------------------")
        print("Nombre: \(linea.nombre)")
        print("Estaciones: \(linea.estaciones.count)")

        print("\nPrimera estacion:")
        print(linea.estaciones.first ?? "Sin estaciones")

        print("\nUltima estacion:")
        print(linea.estaciones.last ?? "Sin estaciones")
    }

    // ==========================================
    // ESTACION ACTUAL
    // ==========================================

    func estacionActual() {

        print("\n===== DONDE ME ENCUENTRO =====")

        mostrarLineas()

        print("\nSeleccione la linea donde se encuentra:")

        guard let entrada = readLine(),
              let numeroLinea = Int(entrada),
              numeroLinea >= 1,
              numeroLinea <= lineas.count else {

            print("Linea invalida.")
            return
        }

        mostrarEstacionesDeLinea(numeroLinea)

        guard let posicion = elegirEstacion(
            numeroLinea: numeroLinea,
            mensaje: "\nSeleccione su estacion actual:"
        ) else {

            return
        }

        let linea = lineas[numeroLinea - 1]

        let estacion = linea.estaciones[posicion]

        mostrarInformacionEstacion(
            estacion,
            numeroLinea: numeroLinea - 1,
            posicion: posicion
        )
    }

    // ==========================================
    // INFORMACION COMPLETA DE ESTACION
    // ==========================================

    func mostrarInformacionEstacion(
        _ estacion: String,
        numeroLinea: Int,
        posicion: Int
    ) {

        print("\n==========================================")
        print("          LLEGASTE A LA ESTACION")
        print("==========================================")

        print("Estacion: \(estacion)")
        print("Linea: \(lineas[numeroLinea].nombre)")

        let personas = personasPorEstacion[estacion] ?? 500

        print("Personas aproximadas: \(personas)")
        print("Salidas disponibles: 2")

        print("\nSERVICIOS")
        print("- Informacion")
        print("- Seguridad")
        print("- Acceso para personas con discapacidad")

        print("\nDESCRIPCION")

        if let descripcion = descripcionesEstaciones[estacion] {

            print(descripcion)

        } else {

            print(
                "Esta estacion cuenta con accesos hacia diferentes calles y zonas cercanas."
            )
        }

        print("\nESTACION ANTERIOR")

        if posicion > 0 {

            print("<- \(lineas[numeroLinea].estaciones[posicion - 1])")

        } else {

            print("Esta es la primera estacion de la linea.")
        }

        print("\nSIGUIENTE ESTACION")

        if posicion < lineas[numeroLinea].estaciones.count - 1 {

            print("-> \(lineas[numeroLinea].estaciones[posicion + 1])")

        } else {

            print("Esta es la ultima estacion de la linea.")
        }

        mostrarConexiones(estacion)
    }

    // ==========================================
    // CONEXIONES
    // ==========================================

    func mostrarConexiones(_ estacion: String) {

        var conexiones: [String] = []

        for linea in lineas {

            for estacionLinea in linea.estaciones {

                if normalizar(estacionLinea) ==
                   normalizar(estacion) {

                    conexiones.append(linea.nombre)
                    break
                }
            }
        }

        if conexiones.count > 1 {

            print("\n==========================================")
            print("         CONEXIONES DISPONIBLES")
            print("==========================================")

            for linea in conexiones {

                print("- \(linea)")
            }

            print("\nPuedes cambiar de linea en esta estacion.")

        } else {

            print("\nNo hay conexion registrada en esta estacion.")
        }
    }

    // ==========================================
    // PLANIFICAR VIAJE
    // ==========================================

    func planificarViaje() {

        print("\n==========================================")
        print("          PLANIFICACION DE VIAJE")
        print("==========================================")

        print("\nPrimero selecciona la linea donde estas.")

        mostrarLineas()

        print("\nIngrese el numero de su linea de origen:")

        guard let entradaOrigen = readLine(),
              let numeroLineaOrigen = Int(entradaOrigen),
              numeroLineaOrigen >= 1,
              numeroLineaOrigen <= lineas.count else {

            print("Linea invalida.")
            return
        }

        // ------------------------------------------
        // ESTACION DE ORIGEN
        // ------------------------------------------

        mostrarEstacionesDeLinea(numeroLineaOrigen)

        guard let posicionOrigen = elegirEstacion(
            numeroLinea: numeroLineaOrigen,
            mensaje: "\nSeleccione su estacion de origen:"
        ) else {

            return
        }

        let estacionOrigen =
            lineas[numeroLineaOrigen - 1].estaciones[posicionOrigen]

        // ------------------------------------------
        // DESTINO
        // ------------------------------------------

        print("\nAhora seleccione la linea de destino.")

        mostrarLineas()

        print("\nIngrese el numero de su linea de destino:")

        guard let entradaDestino = readLine(),
              let numeroLineaDestino = Int(entradaDestino),
              numeroLineaDestino >= 1,
              numeroLineaDestino <= lineas.count else {

            print("Linea invalida.")
            return
        }

        mostrarEstacionesDeLinea(numeroLineaDestino)

        guard let posicionDestino = elegirEstacion(
            numeroLinea: numeroLineaDestino,
            mensaje: "\nSeleccione su estacion de destino:"
        ) else {

            return
        }

        let estacionDestino =
            lineas[numeroLineaDestino - 1].estaciones[posicionDestino]

        // ------------------------------------------
        // MOSTRAR RESUMEN
        // ------------------------------------------

        print("\n==========================================")
        print("              RESUMEN")
        print("==========================================")

        print("Origen: \(estacionOrigen)")
        print("Destino: \(estacionDestino)")

        // ==========================================
        // MISMA LINEA
        // ==========================================

        if numeroLineaOrigen == numeroLineaDestino {

            let totalEstaciones =
                abs(posicionDestino - posicionOrigen)

            print("Linea: \(lineas[numeroLineaOrigen - 1].nombre)")
            print("Estaciones restantes: \(totalEstaciones)")

            print("\n==========================================")
            print("              TU RUTA")
            print("==========================================")

            if posicionOrigen <= posicionDestino {

                for i in posicionOrigen...posicionDestino {

                    if i == posicionOrigen {

                        print("🚉 \(lineas[numeroLineaOrigen - 1].estaciones[i])")

                    } else {

                        print(" ↓")
                        print("🚉 \(lineas[numeroLineaOrigen - 1].estaciones[i])")
                    }
                }

            } else {

                for i in stride(
                    from: posicionOrigen,
                    through: posicionDestino,
                    by: -1
                ) {

                    if i == posicionOrigen {

                        print("🚉 \(lineas[numeroLineaOrigen - 1].estaciones[i])")

                    } else {

                        print(" ↓")
                        print("🚉 \(lineas[numeroLineaOrigen - 1].estaciones[i])")
                    }
                }
            }

            print("\nTotal de estaciones: \(totalEstaciones)")

            // PAGO

            if realizarPagoViaje() {

                mostrarInformacionEstacion(
                    estacionDestino,
                    numeroLinea: numeroLineaDestino - 1,
                    posicion: posicionDestino
                )
            }

        } else {

            // ==========================================
            // DIFERENTES LINEAS
            // ==========================================

            print("\nEl origen y destino estan en diferentes lineas.")

            let estacionesOrigen =
                lineas[numeroLineaOrigen - 1].estaciones

            let estacionesDestino =
                lineas[numeroLineaDestino - 1].estaciones

            var estacionConexion: String? = nil

            var posicionConexionOrigen: Int? = nil

            var posicionConexionDestino: Int? = nil

            // BUSCAR CONEXION

            for (i, estacionA) in estacionesOrigen.enumerated() {

                for (j, estacionB) in estacionesDestino.enumerated() {

                    if normalizar(estacionA) ==
                       normalizar(estacionB) {

                        estacionConexion = estacionA
                        posicionConexionOrigen = i
                        posicionConexionDestino = j

                        break
                    }
                }

                if estacionConexion != nil {
                    break
                }
            }

            guard let conexion = estacionConexion,
                  let conexionOrigen = posicionConexionOrigen,
                  let conexionDestino = posicionConexionDestino else {

                print("\nNo existe una conexion registrada entre estas lineas.")

                print("Puedes crear una desde el modo administrador.")

                return
            }

            let estacionesAntes =
                abs(conexionOrigen - posicionOrigen)

            let estacionesDespues =
                abs(posicionDestino - conexionDestino)

            let totalEstaciones =
                estacionesAntes + estacionesDespues

            print("\n==========================================")
            print("           CONEXION ENCONTRADA")
            print("==========================================")

            print("Estacion de conexion: \(conexion)")

            print("\n\(lineas[numeroLineaOrigen - 1].nombre)")
            print("Estaciones hasta la conexion: \(estacionesAntes)")

            print("\n\(lineas[numeroLineaDestino - 1].nombre)")
            print("Estaciones despues de la conexion: \(estacionesDespues)")

            print("\nTotal de estaciones: \(totalEstaciones)")

            // ------------------------------------------
            // RUTA PRIMERA LINEA
            // ------------------------------------------

            print("\n==========================================")
            print("         RUTA - \(lineas[numeroLineaOrigen - 1].nombre)")
            print("==========================================")

            if posicionOrigen <= conexionOrigen {

                for i in posicionOrigen...conexionOrigen {

                    if i == posicionOrigen {

                        print("🚉 \(estacionesOrigen[i])")

                    } else {

                        print(" ↓")
                        print("🚉 \(estacionesOrigen[i])")
                    }
                }

            } else {

                for i in stride(
                    from: posicionOrigen,
                    through: conexionOrigen,
                    by: -1
                ) {

                    if i == posicionOrigen {

                        print("🚉 \(estacionesOrigen[i])")

                    } else {

                        print(" ↓")
                        print("🚉 \(estacionesOrigen[i])")
                    }
                }
            }

            // ------------------------------------------
            // CAMBIO DE LINEA
            // ------------------------------------------

            print("\n==========================================")
            print("          CAMBIO DE LINEA")
            print("==========================================")

            print("Bajate en: \(conexion)")
            print("Ahora cambia a \(lineas[numeroLineaDestino - 1].nombre)")

            // ------------------------------------------
            // RUTA SEGUNDA LINEA
            // ------------------------------------------

            print("\n==========================================")
            print("         RUTA - \(lineas[numeroLineaDestino - 1].nombre)")
            print("==========================================")

            if conexionDestino <= posicionDestino {

                for i in conexionDestino...posicionDestino {

                    if i == conexionDestino {

                        print("🚉 \(estacionesDestino[i])")

                    } else {

                        print(" ↓")
                        print("🚉 \(estacionesDestino[i])")
                    }
                }

            } else {

                for i in stride(
                    from: conexionDestino,
                    through: posicionDestino,
                    by: -1
                ) {

                    if i == conexionDestino {

                        print("🚉 \(estacionesDestino[i])")

                    } else {

                        print(" ↓")
                        print("🚉 \(estacionesDestino[i])")
                    }
                }
            }

            print("\nTotal de estaciones: \(totalEstaciones)")

            // PAGO

            if realizarPagoViaje() {

                mostrarInformacionEstacion(
                    estacionDestino,
                    numeroLinea: numeroLineaDestino - 1,
                    posicion: posicionDestino
                )
            }
        }
    }

    // ==========================================
    // PAGO DEL VIAJE
    // ==========================================

    func realizarPagoViaje() -> Bool {

        print("\n==========================================")
        print("              PAGO DEL VIAJE")
        print("==========================================")

        print(
            "Saldo actual: S/ \(String(format: "%.2f", saldoTarjeta))"
        )

        print(
            "Costo del viaje: S/ \(String(format: "%.2f", precioViaje))"
        )

        if saldoTarjeta < precioViaje {

            print("\nSALDO INSUFICIENTE")
            print("Recarga tu tarjeta antes de realizar el viaje.")

            return false
        }

        saldoTarjeta -= precioViaje

        print("\nViaje pagado correctamente.")

        print(
            "Saldo restante: S/ \(String(format: "%.2f", saldoTarjeta))"
        )

        return true
    }

    // ==========================================
    // CONSULTAR SALDO
    // ==========================================

    func consultarSaldo() {

        print("\n===== SALDO DE TARJETA =====")

        print(
            "Saldo disponible: S/ \(String(format: "%.2f", saldoTarjeta))"
        )
    }

    // ==========================================
    // RECARGAR
    // ==========================================

    func recargarTarjeta() {

        print("\n===== RECARGAR TARJETA =====")

        print("Ingrese el monto:")

        guard let entrada = readLine(),
              let monto = Double(entrada),
              monto > 0 else {

            print("Monto invalido.")
            return
        }

        saldoTarjeta += monto

        print("\nRecarga realizada correctamente.")

        print(
            "Nuevo saldo: S/ \(String(format: "%.2f", saldoTarjeta))"
        )
    }

    // ==========================================
    // REALIZAR VIAJE RAPIDO
    // ==========================================

    func realizarViaje() {

        print("\n===== REALIZAR VIAJE =====")

        _ = realizarPagoViaje()
    }

    // ==========================================
    // MENU TARJETA
    // ==========================================

    func menuTarjeta() {

        var continuar = true

        while continuar {

            print("\n==========================================")
            print("          TARJETA DE TRANSPORTE")
            print("==========================================")

            print("1. Consultar saldo")
            print("2. Recargar tarjeta")
            print("3. Realizar viaje")
            print("4. Volver")

            print("\nSeleccione una opcion:")

            let opcion = readLine() ?? ""

            switch opcion {

            case "1":
                consultarSaldo()

            case "2":
                recargarTarjeta()

            case "3":
                realizarViaje()

            case "4":
                continuar = false

            default:
                print("Opcion invalida.")
            }
        }
    }

    // ==========================================
    // PREGUNTAS FRECUENTES
    // ==========================================

    func preguntasFrecuentes() {

        print("\n===== PREGUNTAS FRECUENTES =====")

        print("\n1. Cuanto cuesta el viaje?")
        print("El costo simulado es S/ 1.50.")

        print("\n2. Puedo recargar mi tarjeta?")
        print("Si, desde Tarjeta de transporte.")

        print("\n3. Puedo buscar una estacion?")
        print("Si, desde Buscar estacion.")

        print("\n4. Puedo planificar mi viaje?")
        print("Si, puedes seleccionar linea y estacion.")

        print("\n5. Que pasa si no tengo saldo?")
        print("El sistema no permite realizar el viaje.")
    }

    // ==========================================
    // HORARIOS
    // ==========================================

    func mostrarHorarios() {

        print("\n===== HORARIOS DEL METRO =====")

        print("\nLunes a viernes:")
        print("05:00 AM - 11:00 PM")

        print("\nSabados:")
        print("05:00 AM - 11:00 PM")

        print("\nDomingos y feriados:")
        print("05:30 AM - 10:00 PM")
    }

    // ==========================================
    // ADMINISTRADOR
    // ==========================================

    func modoAdministrador() {

        print("\n==========================================")
        print("          MODO ADMINISTRADOR")
        print("==========================================")

        print("Ingrese la contraseña:")

        let password = readLine() ?? ""

        if password != "1234" {

            print("Contraseña incorrecta.")
            return
        }

        print("\nAcceso permitido.")

        menuAdministrador()
    }

    // ==========================================
    // MENU ADMIN
    // ==========================================

    func menuAdministrador() {

        var continuar = true

        while continuar {

            print("\n==========================================")
            print("          MENU ADMINISTRADOR")
            print("==========================================")

            print("1. Agregar estacion")
            print("2. Insertar estacion")
            print("3. Crear nueva linea")
            print("4. Crear estacion de conexion")
            print("5. Ver estaciones")
            print("6. Volver")

            print("\nSeleccione una opcion:")

            let opcion = readLine() ?? ""

            switch opcion {

            case "1":
                agregarEstacion()

            case "2":
                insertarEstacion()

            case "3":
                crearLinea()

            case "4":
                crearEstacionConexion()

            case "5":
                mostrarEstaciones()

            case "6":
                continuar = false

            default:
                print("Opcion invalida.")
            }
        }
    }

    // ==========================================
    // AGREGAR ESTACION
    // ==========================================

    func agregarEstacion() {

        print("\n===== AGREGAR ESTACION =====")

        mostrarLineas()

        print("\nIngrese el numero de linea:")

        guard let entrada = readLine(),
              let numero = Int(entrada),
              numero >= 1,
              numero <= lineas.count else {

            print("Linea invalida.")
            return
        }

        print("Ingrese el nombre de la nueva estacion:")

        let nombre = readLine() ?? ""

        if nombre.isEmpty {

            print("El nombre no puede estar vacio.")
            return
        }

        lineas[numero - 1].estaciones.append(nombre)

        personasPorEstacion[nombre] = 500

        descripcionesEstaciones[nombre] =
            "Esta es una nueva estacion registrada por el administrador."

        print("\nEstacion agregada correctamente.")
        print("Estacion: \(nombre)")
        print("Linea: \(lineas[numero - 1].nombre)")
    }

    // ==========================================
    // INSERTAR ESTACION
    // ==========================================

    func insertarEstacion() {

        print("\n===== INSERTAR ESTACION =====")

        mostrarLineas()

        print("\nIngrese el numero de linea:")

        guard let entrada = readLine(),
              let numero = Int(entrada),
              numero >= 1,
              numero <= lineas.count else {

            print("Linea invalida.")
            return
        }

        mostrarEstacionesDeLinea(numero)

        print("\nIngrese la posicion donde desea insertar:")

        guard let entradaPosicion = readLine(),
              let posicion = Int(entradaPosicion),
              posicion >= 1,
              posicion <= lineas[numero - 1].estaciones.count + 1 else {

            print("Posicion invalida.")
            return
        }

        print("Ingrese el nombre de la estacion:")

        let nombre = readLine() ?? ""

        if nombre.isEmpty {

            print("Nombre invalido.")
            return
        }

        lineas[numero - 1].estaciones.insert(
            nombre,
            at: posicion - 1
        )

        personasPorEstacion[nombre] = 500

        descripcionesEstaciones[nombre] =
            "Esta es una nueva estacion registrada por el administrador."

        print("\nEstacion insertada correctamente.")
    }

    // ==========================================
    // CREAR LINEA
    // ==========================================

    func crearLinea() {

        print("\n===== CREAR NUEVA LINEA =====")

        print("Ingrese el nombre de la nueva linea:")

        let nombre = readLine() ?? ""

        if nombre.isEmpty {

            print("Nombre invalido.")
            return
        }

        let nuevaLinea = Linea(
            nombre: nombre,
            estaciones: []
        )

        lineas.append(nuevaLinea)

        print("\nNueva linea creada correctamente.")
        print("Nombre: \(nombre)")
        print("Numero: \(lineas.count)")
    }

    // ==========================================
    // CREAR CONEXION
    // ==========================================

    func crearEstacionConexion() {

        print("\n===== CREAR ESTACION DE CONEXION =====")

        mostrarLineas()

        print("\nIngrese la primera linea:")

        guard let entradaA = readLine(),
              let lineaA = Int(entradaA),
              lineaA >= 1,
              lineaA <= lineas.count else {

            print("Linea invalida.")
            return
        }

        print("Ingrese la segunda linea:")

        guard let entradaB = readLine(),
              let lineaB = Int(entradaB),
              lineaB >= 1,
              lineaB <= lineas.count,
              lineaA != lineaB else {

            print("Linea invalida.")
            return
        }

        print("Ingrese el nombre de la estacion de conexion:")

        let nombre = readLine() ?? ""

        if nombre.isEmpty {

            print("Nombre invalido.")
            return
        }

        lineas[lineaA - 1].estaciones.append(nombre)
        lineas[lineaB - 1].estaciones.append(nombre)

        personasPorEstacion[nombre] = 1500

        descripcionesEstaciones[nombre] =
            "Esta estacion funciona como punto de conexion entre dos lineas del sistema."

        print("\n==========================================")
        print("      CONEXION CREADA CORRECTAMENTE")
        print("==========================================")

        print("Estacion: \(nombre)")
        print("Linea 1: \(lineas[lineaA - 1].nombre)")
        print("Linea 2: \(lineas[lineaB - 1].nombre)")
    }

    // ==========================================
    // INICIAR
    // ==========================================

    func iniciar() {

        var continuar = true

        while continuar {

            mostrarTitulo()

            print("\nMENU PRINCIPAL")
            print("------------------------------------------")
            print("1. Mostrar lineas")
            print("2. Mostrar estaciones")
            print("3. Buscar estacion")
            print("4. Informacion de una linea")
            print("5. Donde me encuentro?")
            print("6. Planificar viaje")
            print("7. Tarjeta de transporte")
            print("8. Preguntas frecuentes")
            print("9. Horarios")
            print("10. Administrador")
            print("11. Salir")
            print("------------------------------------------")

            print("\nIngrese una opcion:")

            let opcion = readLine() ?? ""

            switch opcion {

            case "1":
                mostrarLineas()

            case "2":
                mostrarEstaciones()

            case "3":
                buscarEstacion()

            case "4":
                informacionLinea()

            case "5":
                estacionActual()

            case "6":
                planificarViaje()

            case "7":
                menuTarjeta()

            case "8":
                preguntasFrecuentes()

            case "9":
                mostrarHorarios()

            case "10":
                modoAdministrador()

            case "11":

                print("\nGracias por usar el sistema Metro de Lima.")
                continuar = false

            default:

                print("\nOpcion invalida.")
            }
        }
    }
}

// ==========================================
// EJECUTAR PROGRAMA
// ==========================================

let metro = MetroLima()
metro.iniciar()

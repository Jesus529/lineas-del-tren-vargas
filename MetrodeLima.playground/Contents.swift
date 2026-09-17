
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
    
    

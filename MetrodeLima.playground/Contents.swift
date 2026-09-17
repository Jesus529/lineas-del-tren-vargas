
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
    
    

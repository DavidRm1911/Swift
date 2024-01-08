import Foundation
/*

3. Create an university enrollment system with the following characteristics:
* 		The system has a login with a username and password. (DONE)
* 		Upon logging in, a menu displays the available programs: Computer Science, Medicine, Marketing, and Arts. (DONE)
* 		The user must input their first name, last name, and chosen program. (DONE)
* 		Each program has only 5 available slots. The system will store the data of each registered user, and if it exceeds the limit, it should display a message indicating the program is unavailable.
* 		If login information is incorrect three times, the system should be locked. (DONE)
* 		The user must choose a campus from three cities: London, Manchester, Liverpool. 
* 		In London, there is 1 slot per program; in Manchester, there are 3 slots per program, and in Liverpool, there is 1 slot per program.
* 		If the user selects a program at a campus that has no available slots, the system should display the option to enroll in the program at another campus.

*/


class London {
    var clase1 : Int = 4 //ComputerScience
    var clase2: Int = 4 //Medicine
    var clase3: Int = 4 //Marketing
    var clase4: Int = 4 //Arts

    func verificarvacante1() {
        if clase1 <= 5 {
            clase1 += 1
            print("Te inscribiste de manera exitosa")
        } else{
            print("Esta llena , elige otra ubicacion")
        }
    }

    func verificarvacante2(){
        if clase2 <= 5 {
            clase2 += 2
            print("Te inscribiste de manera exitosa")
        } else{
            print("Esta llena elegir otra ubicacion")
        }
    }

    func verificarvacante3(){
        if clase3 <= 5 {
            clase3 += 3
            print("Te inscribiste de manera exitosa") 
        } else {
            print("Esta llena elegir otra ubicacion")
        }
    }
    func verificarvacante4(){
        if clase4 <= 5 {
            clase4 += 4
            print("Te inscribiste de manera exitosa")
        } else {
            print("Esta llena elegir otra ubicacion")
        }
    }


    var getClase1: Int { 
        return clase1
    }

    var getClase2: Int { 
        return clase2
    }

        var getClase3: Int { 
        return clase3
    }

        var getClase4: Int { 
        return clase4
    }
}

class Manchester {
    var clase1 : Int = 2 //ComputerScience
    var clase2: Int = 2 //Medicine
    var clase3: Int = 2 //Marketing
    var clase4: Int = 2 //Arts

    func verificarvacante1() {
        if clase1 <= 5 {
            clase1 += 1
            print("Te inscribiste de manera exitosa")
        } else{
            print("Esta llena , elige otra ubicacion")
        }
    }

    func verificarvacante2(){
        if clase2 <= 5 {
            clase2 += 2
            print("Te inscribiste de manera exitosa")
        } else{
            print("Esta llena elegir otra ubicacion")
        }
    }

    func verificarvacante3(){
        if clase3 <= 5 {
            clase3 += 3
            print("Te inscribiste de manera exitosa") 
        } else {
            print("Esta llena elegir otra ubicacion")
        }
    }
    func verificarvacante4(){
        if clase4 <= 5 {
            clase4 += 4
            print("Te inscribiste de manera exitosa")
        } else {
            print("Esta llena elegir otra ubicacion")
        }
    }

    var getClase1: Int { 
        return clase1
    }

    var getClase2: Int { 
        return clase2
    }

        var getClase3: Int { 
        return clase3
    }

        var getClase4: Int { 
        return clase4
    }

}

class Liverpool {
    var clase1 : Int = 4 //ComputerScience
    var clase2: Int = 4 //Medicine
    var clase3: Int = 4 //Marketing
    var clase4: Int = 4 //Arts

    func verificarvacante1() {
        if clase1 <= 5 {
            clase1 += 1
            print("Te inscribiste de manera exitosa")
        } else{
            print("Esta llena , elige otra ubicacion")
        }
    }

    func verificarvacante2(){
        if clase2 <= 5 {
            clase2 += 2
            print("Te inscribiste de manera exitosa")
        } else{
            print("Esta llena elegir otra ubicacion")
        }
    }

    func verificarvacante3(){
        if clase3 <= 5 {
            clase3 += 3
            print("Te inscribiste de manera exitosa") 
        } else {
            print("Esta llena elegir otra ubicacion")
        }
    }
    func verificarvacante4(){
        if clase4 <= 5 {
            clase4 += 4
            print("Te inscribiste de manera exitosa")
        } else {
            print("Esta llena elegir otra ubicacion")
        }
    }

    var getClase1: Int { 
        return clase1
    }

    var getClase2: Int { 
        return clase2
    }

        var getClase3: Int { 
        return clase3
    }

        var getClase4: Int { 
        return clase4
    }
}

func verificarCredenciales (usuario : String, contrasena : String) -> Bool {
    let fileName = "credenciales.txt"
    let filePath = FileManager.default.currentDirectoryPath + "/" + fileName

    do{
        let credentials = try String(contentsOfFile: filePath) //esto es para leer
        let lines = credentials.components(separatedBy: "\n")

        for line in lines {
            let components = line.components(separatedBy: ":")
                if components.count == 2 {
                    let storedUser = components[0]
                    let storedPass = components[1]

                    if usuario==storedUser && contrasena==storedPass {
                        return true 
                    }
                }
        }



    }catch {
        print("Error al leer el archivo ", error.localizedDescription)
    }

    return false
}

func iniciarSesion(){
    var intentos = 0
    let maxIntentos = 3

    repeat {
        print ("Ingrese su usuario: ")
        guard let usuario = readLine() else {
            print("Entrada Invalida")
            return

        }

        print ("Ingrese su contrasena: ")
        guard let contrasena = readLine() else {
            print("Entrada Invalida")
            return
        }

        if verificarCredenciales(usuario: usuario, contrasena: contrasena) {
            print("Inicio de sesion exitoso ", usuario)
            return // asi se sale dle bucle
        } else {
            intentos += 1
            print("Ingreso incorrecto, vuelva a ingresar")
        }




    }while intentos <= maxIntentos

    print ("Ingresaste todo mal pibe, adios")
}

func menu(){
    let london = London()
    let manchester = Manchester()
    let liverpool = Liverpool()
    var salida: Bool = false
    var salidatotal: Bool = false

    repeat{
    repeat{
    iniciarSesion()

    print("A continuacion mostraremos distintos programas a los que se puede unir, elija uno:")
    print("1. Computes Science")
    print("2. Medicine")
    print("3. Marketing")
    print("4. Arts")
    print("5. salir")

    print("Primero que nada ingrese su nombre: ")
    let nombre = String(readLine()!)
    //print(nombre)
    print("Ahora ingrese apellido: ")
    let apellido = String (readLine()!)
    //print(apellido)
    print("Ahora ingrese el numero de a que programa quiere ingresar")
    let opcion = Int(readLine()!)!
    print(opcion)
  
    if(opcion == 1){
        print("Puedes elegir entre:")
        print("1. Manchester")
        print("2. Liverpool")
        print("3. London")
        let opcion2 = Int(readLine()!)!
        switch(opcion2){
            case 1: 
            if(manchester.getClase1 < 5){
                manchester.verificarvacante1()
                //print("\(manchester.getClase1)")
                salida = true
            } else {
                print("No esta disponible en estos lugares, puede elegir estos en los que si esta: ")
                disponibilidad(opcion: 1, london:london, manchester:manchester, liverpool:liverpool)
            }
            case 2:
             if(liverpool.getClase1 < 5){
                liverpool.verificarvacante1()
                //print("\(manchester.getClase1)")
                salida = true
            } else {
                print("No esta disponible en estos lugares, puede elegir estos en los que si esta: ")
                disponibilidad(opcion: 1, london:london, manchester:manchester, liverpool:liverpool)
            }
            case 3:
            if(london.getClase1 < 5){
                london.verificarvacante1()
                //print("\(manchester.getClase1)")
                salida = true
            } else {
                print("No esta disponible en estos lugares, puede elegir estos en los que si esta: ")
                disponibilidad(opcion: 1, london:london, manchester:manchester, liverpool:liverpool)
            }
            default:
            print("elige otra")
        }
    }

    if (opcion==2){
        print("Puedes elegir entre:")
        print("1. Manchester")
        print("2. Liverpool")
        print("3. London")
        let opcion2 = Int(readLine()!)!
        switch(opcion2){
            case 1: 
            if(manchester.getClase2 < 5){
                manchester.verificarvacante2()
                //print("\(manchester.getClase1)")
                salida = true
            } else {
                print("No esta disponible en estos lugares, puede elegir estos en los que si esta: ")
                disponibilidad(opcion: 2, london:london, manchester:manchester, liverpool:liverpool)
            }
            case 2:
             if(liverpool.getClase2 < 5){
                liverpool.verificarvacante2()
                //print("\(manchester.getClase1)")
                salida = true
            } else {
                print("No esta disponible en estos lugares, puede elegir estos en los que si esta: ")
                disponibilidad(opcion: 2, london:london, manchester:manchester, liverpool:liverpool)
            }
            case 3:
            if(london.getClase2 < 5){
                london.verificarvacante2()
                //print("\(manchester.getClase1)")
                salida = true
            } else {
                print("No esta disponible en estos lugares, puede elegir estos en los que si esta: ")
                disponibilidad(opcion: 2, london:london, manchester:manchester, liverpool:liverpool)
            }
            default:
            print("elige otra")
        }
    }

    if (opcion==3){
        print("Puedes elegir entre:")
        print("1. Manchester")
        print("2. Liverpool")
        print("3. London")
        let opcion2 = Int(readLine()!)!
        switch(opcion2){
            case 1: 
            if(manchester.getClase3 < 5){
                manchester.verificarvacante3()
                //print("\(manchester.getClase1)")
                salida = true
            } else {
                print("No esta disponible en estos lugares, puede elegir estos en los que si esta: ")
                disponibilidad(opcion: 3, london:london, manchester:manchester, liverpool:liverpool)
            }
            case 2:
             if(liverpool.getClase3 < 5){
                liverpool.verificarvacante3()
                //print("\(manchester.getClase1)")
                salida = true
            } else {
                print("No esta disponible en estos lugares, puede elegir estos en los que si esta: ")
                disponibilidad(opcion: 3, london:london, manchester:manchester, liverpool:liverpool)
            }
            case 3:
            if(london.getClase3 < 5){
                london.verificarvacante3()
                //print("\(manchester.getClase1)")
                salida = true
            } else {
                print("No esta disponible en estos lugares, puede elegir estos en los que si esta: ")
                disponibilidad(opcion: 3, london:london, manchester:manchester, liverpool:liverpool)
            }
            default:
            print("elige otra")
        }
    }

    if (opcion==4){
        print("Puedes elegir entre:")
        print("1. Manchester")
        print("2. Liverpool")
        print("3. London")
        let opcion2 = Int(readLine()!)!
        switch(opcion2){
            case 1: 
            if(manchester.getClase4 < 5){
                manchester.verificarvacante4()
                //print("\(manchester.getClase1)")
                salida = true
            } else {
                print("No esta disponible en estos lugares, puede elegir estos en los que si esta: ")
                disponibilidad(opcion: 4, london:london, manchester:manchester, liverpool:liverpool)
            }
            case 2:
             if(liverpool.getClase4 < 5){
                liverpool.verificarvacante4()
                //print("\(manchester.getClase1)")
                salida = true
            } else {
                print("No esta disponible en estos lugares, puede elegir estos en los que si esta: ")
                disponibilidad(opcion: 4, london:london, manchester:manchester, liverpool:liverpool)
            }
            case 3:
            if(london.getClase4 < 5){
                london.verificarvacante4()
                //print("\(manchester.getClase1)")
                salida = true
            } else {
                print("No esta disponible en estos lugares, puede elegir estos en los que si esta: ")
                disponibilidad(opcion: 4, london:london, manchester:manchester, liverpool:liverpool)
            }
            default:
            print("elige otra")
        }
    }


    if (opcion == 5){
        print("Hasta luego")
        salidatotal = true
    }
    }while(salida == false)
    }while(salidatotal == false)


}

func disponibilidad(opcion: Int, london: London, manchester: Manchester, liverpool: Liverpool){
  

    switch(opcion){
        case 1:
        if(london.getClase1 < 5){
            print("Hay Disponibilidad en London")
            
        } 
        if (manchester.getClase1 < 5){
            print("Hay Disponibilidad en Manchester")
            
        }
        if (liverpool.getClase1 < 5){
            print("Hay Disponibilidad en Liverpool")
            return
        }
        case 2:
         if(london.getClase2 < 5){
            print("Hay Disponibilidad en London")
            
        } 
        if (manchester.getClase2 < 5){
            print("Hay Disponibilidad en Manchester")
            
        }
        if (liverpool.getClase2 < 5){
            print("Hay Disponibilidad en Liverpool")
            return
        }

        case 3:
         if(london.getClase3 < 5){
            print("Hay Disponibilidad en London")
            
        } 
        if (manchester.getClase3 < 5){
            print("Hay Disponibilidad en Manchester")
            
        }
        if (liverpool.getClase3 < 5){
            print("Hay Disponibilidad en Liverpool")
            return
        }

        case 4:
         if(london.getClase4 < 5){
            print("Hay Disponibilidad en London")
            
        } 
        if (manchester.getClase4 < 5){
            print("Hay Disponibilidad en Manchester")
            
        }
        if (liverpool.getClase4 < 5){
            print("Hay Disponibilidad en Liverpool")
            return
        }

        default:
            print("No hay disponible en ningun otro lugar")
            
        

    }
    
    
}



print("Bienvenido")

menu()


import Foundation
import Darwin
//1er ejercicio:
//Para este caso usare el usuario david, y contraseña daniela

/*1. Create an online banking system with the following features:

* Users must be able to log in with a username and password.
* If the user enters the wrong credentials three times, the system must lock them out.
* The initial balance in the bank account is $2000.
* The system must allow users to deposit, withdraw, view, and transfer money.
* The system must display a menu for users to perform transactions.2. 

*/

var cuentacondinero: Float = 2000
func Bienvenida() {
    
    print("Bienvenido al banco de la nación")
    
}

func Logueo() {

    let usuariooriginal = "david"
    let contrasenaoriginal: String = "daniela"
    var acceso: Bool = false
    var cuenta: Int = 0

    repeat{

    print("Porfavor ingresa tu usuario");
    let usuario = readLine() ?? "";
    
    print("Ingrese su contraseña");
    let contrasena = readLine() ?? "";
   
    if  (usuario==usuariooriginal && contrasenaoriginal==contrasena){
        
        acceso = true
    } else {
        cuenta += 1
    }

    if (cuenta == 3){
        print("Introdujiste varias veces mal la contraseña")
        exit(0)
    } else if  ( cuenta > 0 ) {
        print ("Vuelve a ingresar")
    }

    }while ( acceso == false )
    
}


func Menu(){
    var repetir: Bool = false

    repeat{

    
    print("\nSelecciona una de las opciones  ")
    print("1. Ver tu dinero ")
    print("2. Retirar un monto ")
    print("3. Depositar ");
    print("4. Transferir ")
    print("5. Salir")
    let opcion = Int(readLine()!)!
    var accion: Bool = false
 


    switch(opcion){
        case 1://ver cuenta
        print("Tu dinero actual es \(cuentacondinero)")
        case 2://retirar dinero
        print("Cuanto deseas retirar?")

        repeat{
            var retirar = Float(readLine()!)!
            if(cuentacondinero-retirar>=0){
                cuentacondinero = cuentacondinero - retirar
                print ("Nueva cantidad: \(cuentacondinero)")
                accion = true

            } else {
                print("Ingresa otra cantidad")
            }
        } while (accion == false)

        case 3: //ingresar dinero
        print("Ingrese un monto")
        var ingresar: Float=Float(readLine()!)!
        cuentacondinero = cuentacondinero + ingresar
        print("Nuevo monto: \(cuentacondinero)")

        case 4: //Transferir
        print("A quien deseas transferir")
        var transferir = (readLine())!
        accion = false

        repeat{
            print("Cuanto vas a transferir")
            var retirar = Float(readLine()!)!
            if(cuentacondinero-retirar>=0){
                cuentacondinero = cuentacondinero - retirar
                print ("Nueva cantidad: \(cuentacondinero)")
                accion = true

            } else {
                print("Ingresa otra cantidad")
            }
        } while (accion == false)
        

        default:
        repetir = true 



    }

    }while(repetir == false)

}

Bienvenida()
Logueo()
Menu()
print("lograste salir")


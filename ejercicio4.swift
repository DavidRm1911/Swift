/*4. Create an online shipping system with the following features:
* 		The system has a login that locks after the third failed attempt.(DONE)
* 		Display a menu that allows: Sending a package, exiting the system.(DONE)
* 		To send a package, sender and recipient details are required.(DONE)
* 		The system assigns a random package number to each sent package.(DONE)
* 		The system calculates the shipping price. $2 per kg.(DONE)
* 		The user must input the total weight of their package, and the system should display the amount to pay.(DONE)
* 		The system should ask if the user wants to perform another operation. If the answer is yes, it should return to the main menu. If it's no, it should close the system.(DONE)
*/

import Foundation
import Darwin

func logueo(){
    var conteo: Int = 0
    let usuarioAD: String = "david"
    let contrasenaAD: String = "david"
    var salida: Bool = false
   


    repeat{
    print("Bienvenido por favor ingrese un usuario:")
    let usuario = String(readLine()!)
    print("Ahora ingrese una contrasena")
    let contrasena = String(readLine()!)
     if (conteo == 3){
        print("Ingresaste varias veces la contraseña incorrecta")
        exit(0)
    }
    if(usuario == usuarioAD && contrasena == contrasenaAD){
        print(" Inicio exitoso")
        salida = true
    }else{
        print("Ingreso erroneo, vuelve a intentar")
        conteo += 1
    }
   
    }while (salida == false)
    

}

func envio(){
    let limiteinf = 100_000
    let limitesup = 999_999
    let Random = Int(arc4random_uniform(UInt32(limitesup - limiteinf + 1))) + limiteinf

    // otra forma : let random = Int.random(in: limiteinf...limitesup)
    //let random = Int(arc4random_uniform(900000)) + 100000
    //lo mismo que era srand(time(NULL)) = 900000 +100000
    print ("El numero del paquete es: \(Random)")
    print("Ingrese el peso del producto en KG")
    let peso: Int = Int(readLine()!)!
    var conversion = peso * 2
    print ("El costo por peso es de 2 dolares, el costo total es de \(conversion)$")

}

func menu(){

    
    
    var salida: Bool = false

    print("Bienvenido al menu: porfavor seleccione una opcion")
    print("1. Enviar paquete")
    print("2. Salir")
    var opcion: Int = Int(readLine()!)!

    if(opcion == 1) {
        print("Ingrese los datos de la persona a la que se enviara: ")
        let comentario1: String = String(readLine()!)
        print("Ingrese datos del producto: ")
        let comentario2: String = String(readLine()!)
        envio()
    }
    if opcion == 2 {exit(0)}



}



logueo()

var salida: Bool = false

repeat{
menu()
print("desea realizar otra operacion?")
print("1. Si")
print("2. No")
var opcion = Int(readLine()!)!
salida = (opcion == 1) ? false : true
}while(salida == false )
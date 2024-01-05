import Foundation

/*EN PROCESO
2. Create a currency converter between CLP, ARS, USD, EUR, TRY, GBP with the following features:
* 		The user must choose their initial currency and the currency they want to exchange to.
* 		The user can choose whether or not to withdraw their funds. If they choose not to withdraw, it should return to the main menu.
* 		If the user decides to withdraw the funds, the system will charge a 1% commission.
* 		Set a minimum and maximum amount for each currency, it can be of your choice.
* 		The system should ask the user if they want to perform another operation. If they choose to do so, it should restart the process; otherwise, the system should close.*/
/// EN PROCESO
func Bienvenido() {
    print("Bienvenido a convertidor de monedas :D!!!!");
    print("Nota: Solo sirve para CLP, ARS, USD, EUR, TRY, GBP")
}
var cuentacondinero: Float=2000
var tipodemoneda: String = ""
var terminar: Bool = false
var terminar2: Bool = false
func menu(){
    print("Elige con que moneda deseas comenzar: ")
    print("1.CLP") //conversion desde 1$= 890.09
    print("2.ARS") //Conversion desde 1$= 812.25
    print("3.USD") //1.1
    print("4.EUR") //Conversion desde 1$= 0.91
    print("5.TRY") //Conversion desde 1$=29.84
    print("6.GBP") //Conversion desde 1$= 0.79
    print("Cabe decir, que comienzas con 2000$, al elegir una opcion distinta a USD, el valor de esta moneda se convertira a la de la otra")
    let opcion = Int(readLine()!)!
    var conversion: Float = 0

    var accion: Bool = false
    
    repeat{
    switch(opcion){
        case 1:
        print("Haz elegido CLP")
        conversion = 890.09
        cuentacondinero = cuentacondinero * conversion
        print("Ahora tienes \(cuentacondinero) CLP")
        tipodemoneda = "CLP"
        accion = true

        case 2:
        print("Haz elegido ARS")
        conversion = 812.25
        cuentacondinero = cuentacondinero * conversion
        print("Ahora tienes \(cuentacondinero) ARS")
        tipodemoneda = "ARS"
        accion = true

        case 3:
        print("Haz elegido USD")
        print("Se mantiene sin cambios")
        tipodemoneda = "USD"
        accion = true

        case 4:
        print("Haz elegido EUR")
        conversion = 0.91
        cuentacondinero = cuentacondinero * conversion
        print("Ahora tienes \(cuentacondinero) EUR")
        tipodemoneda = "EUR"
        accion = true

        case 5:
        print("Haz elegido TRY")
        conversion = 29.84
        cuentacondinero = cuentacondinero * conversion
        print("Ahora tienes \(cuentacondinero) TRY")
        tipodemoneda = "TRY"
        accion = true

        case 6:
        print("Haz elegido GBP")
        conversion = 0.79
        cuentacondinero = cuentacondinero * conversion
        print("Ahora tienes \(cuentacondinero) GBP")
        tipodemoneda = "GBP"
        accion = true

        default:
        print("Ingresa otro valor")
        accion = false

    }

    }while(accion == false)
}

func retirar(){
    print("Deseas retirar?")
    print("Nos quedaremos con el 1%")
    print("1. Si")
    print("2. No")
    let opcion1 = Int(readLine()!)!
    var dinero: Float = 0

    repeat{
    switch(opcion1){
        case 1:
        print("Cuanto deseas retirar?")
        dinero = Float(readLine()!)!
        if(cuentacondinero - dinero >= 0){
        cuentacondinero = dinero //dinero que queda en la cuenta
        dinero = (dinero*99)/100
        

        print("Haz retirado \(dinero) \(tipodemoneda)")
        print("EN tu cuenta quedan \(cuentacondinero) \(tipodemoneda)")
        terminar2 = true}
        else {terminar2 = false}
        case 2: 
        terminar = true 
        terminar2 = true
        default : terminar2 = false
    }
    }while(terminar2 == false)
}

Bienvenido()
menu()
retirar()
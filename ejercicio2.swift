import Foundation

/*
2. Create a currency converter between CLP, ARS, USD, EUR, TRY, GBP with the following features:
* 		The user must choose their initial currency and the currency they want to exchange to.
* 		The user can choose whether or not to withdraw their funds. If they choose not to withdraw, it should return to the main menu.
* 		If the user decides to withdraw the funds, the system will charge a 1% commission.
* 		Set a minimum and maximum amount for each currency, it can be of your choice.
* 		The system should ask the user if they want to perform another operation. If they choose to do so, it should restart the process; otherwise, the system should close.*/

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
        cuentacondinero = cuentacondinero - dinero //dinero que queda en la cuenta
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

func convertir() {
    var cantidadAConvertir: Float = 0

    print("Elige a qué moneda deseas convertir:")
    print("1. CLP")
    print("2. ARS")
    print("3. USD")
    print("4. EUR")
    print("5. TRY")
    print("6. GBP")
    let opcionConversion = Int(readLine()!)!

    var tasaDeCambio: Float = 0
    var monedaConvertida: String = ""

    switch tipodemoneda {
        case "CLP":
            switch opcionConversion {
                case 1:
                tasaDeCambio = 1
                monedaConvertida = "CLP"
                case 2:
                tasaDeCambio = 0.91
                monedaConvertida = "ARS"
                case 3:
                tasaDeCambio = 0.0091
                monedaConvertida = "USD"
                case 4:
                tasaDeCambio = 0.0010
                monedaConvertida = "EUR"
                case 5:
                tasaDeCambio = 0.033
                monedaConvertida = "TRY"
                case 6:
                tasaDeCambio = 0.00088
                monedaConvertida = "GBP"
                default:
                print("Opcion INvalidada")
                return
            }
        case "ARS":
            switch opcionConversion {
                case 1:
                tasaDeCambio = 1.10
                monedaConvertida = "CLP"
                case 2:
                tasaDeCambio = 1
                monedaConvertida = "ARS"
                case 3:
                tasaDeCambio = 0.0012
                monedaConvertida = "USD"
                case 4:
                tasaDeCambio = 0.0011
                monedaConvertida = "EUR"
                case 5:
                tasaDeCambio = 0.037
                monedaConvertida = "TRY"
                case 6:
                tasaDeCambio = 0.00097
                monedaConvertida = "GBP"
                default:
                print("Opcion invalidada")
                return
            }
        case "USD":
            switch opcionConversion {
                case 1:
                tasaDeCambio = 889.95
                monedaConvertida = "CLP"
                case 2:
                tasaDeCambio = 812.25
                monedaConvertida = "ARS"
                case 3:
                tasaDeCambio = 1
                monedaConvertida = "USD"
                case 4:
                tasaDeCambio = 0.91
                monedaConvertida = "EUR"
                case 5:
                tasaDeCambio = 29.85
                monedaConvertida = "TRY"
                case 6:
                tasaDeCambio = 0.79
                monedaConvertida = "GBP"
                default:
                print("Opcion invalidad")
                return
            }
        case "EUR":
            switch opcionConversion {
                case 1:
                    tasaDeCambio = 890.09 
                    monedaConvertida = "CLP"
                case 2:
                    tasaDeCambio = 1.23 
                    monedaConvertida = "ARS"
                case 3:
                    tasaDeCambio = 1.08 
                    monedaConvertida = "USD"
                case 4:
                    tasaDeCambio = 1
                    monedaConvertida = "EUR"
                case 5:
                    tasaDeCambio = 0.75 
                    monedaConvertida = "TRY"
                case 6:
                    tasaDeCambio = 0.91 
                    monedaConvertida = "GBP"
                default:
                    print("Opción inválida")
                    return
            }
        case "TRY":
            switch opcionConversion {
                case 1:
                tasaDeCambio = 29.82
                monedaConvertida = "CLP"
                case 2:
                tasaDeCambio = 27.22
                monedaConvertida = "ARS"
                case 3:
                tasaDeCambio = 0.034
                monedaConvertida = "USD"
                case 4:
                tasaDeCambio = 0.031
                monedaConvertida = "EUR"
                case 5:
                tasaDeCambio = 1
                monedaConvertida = "TRY"
                case 6:
                tasaDeCambio = 0.026
                monedaConvertida = "GBP"
                default: 
                print("Opcion invalida")
                return
            }
        case "GBP":
            switch opcionConversion {
                case 1:
                tasaDeCambio = 1131.99
                monedaConvertida = "CLP"
                case 2:
                tasaDeCambio = 1032.95
                monedaConvertida = "ARS"
                case 3:
                tasaDeCambio = 1.27
                monedaConvertida = "USD"
                case 4:
                tasaDeCambio = 1.16
                monedaConvertida = "EUR"
                case 5:
                tasaDeCambio = 37.95
                monedaConvertida = "TRY"
                case 6:
                tasaDeCambio = 1
                monedaConvertida = "GBP"
                default:
                print("Numero invalido")
                return
            }
        default:
            print("Moneda no válida")
            return
    }

    cuentacondinero = cuentacondinero * tasaDeCambio
    print("ahora lo que tienes es: \(cuentacondinero) \(monedaConvertida)")
}


Bienvenido()
menu()
retirar()
var volver: Int = 0
var bool1: Bool = false


repeat{
print("Deseas realizar otra operacion?")
print("1. Si")
print("2. No")
volver = Int(readLine()!)!
if (volver==1){
    convertir()
    retirar()
    bool1 = false;
} else if (volver==2){
    bool1 = true
}

} while(bool1 == false)

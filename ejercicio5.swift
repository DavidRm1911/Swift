/*5. Develop a finance management application with the following features:
* 		The user records their total income.(DONE)
* 		There are categories: Medical expenses, household expenses, leisure, savings, and education.(DONE)
* 		The user can list their expenses within the categories and get the total for each category.(DONE)
* 		The user can obtain the total of their expenses.(DONE)
* 		If the user spends the same amount of money they earn, the system should display a message advising the user to reduce expenses in the category where they have spent the most money.
* 		If the user spends less than they earn, the system displays a congratulatory message on the screen.
last week
* 		If the user spends more than they earn, the system will display advice to improve the user's financial health.*/
import Foundation
import Darwin

class Expenses{
    var medical: Float = 0
    var househol: Float = 0
    var leisure: Float = 0
    var savings: Float = 0
    var education: Float = 0

    var getMedical: Float { 
        return medical
    }

    var getHousehold: Float { 
        return househol
    }

    var getLeisure: Float { 
        return leisure
    }

    var getSavings: Float { 
        return savings
    }
    
    var getEducation: Float {
        return education
    }

    func Gastomayor() -> String {
        let expenses = [
            "Medical": medical,
            "Household": househol,
            "Leisure": leisure,
            "Savings": savings,
            "Education": education
        ]

        guard let maxExpense = expenses.max(by: { $0.value < $1.value }) else {
            return "No se han ingresado gastos."
        }

        return "El mayor gasto fue en \(maxExpense.key) con \(maxExpense.value) unidades monetarias."
    }


}

var ingresos: Float = 0 
var expenses = Expenses()
func Menu(){
    print("Bienvenido al sistema de finanzas :)")
    print("Ingrese alguna opcion: ")
    print("1. Ingrese sus ingresos: ")
    print("2. Revise su lista de gastos: ")
    print("3. Ingrese gastos segun categoria: ")
    print("4. Salir")
}


func Datos(){

    var opcion: Int = Int(readLine()!)!
    print(opcion)
    var auxiliar: Float = 0
   
    
 
    if(ingresos == 0 ){
         print("Ingrese sus incomes: ")
    ingresos = Float(readLine()!)!
    }

    switch(opcion){
    case 2: 
    print("Sus gastos generales son: ")
    var gastos: Float = expenses.getEducation + expenses.getHousehold + expenses.getLeisure + expenses.getMedical + expenses.getSavings
    print(gastos)
    print ("Usted gastó \(expenses.getEducation)$ en gastos relacionados a la educacion")
    print( "Usted gastó \(expenses.getHousehold)$ en gastos relacionados a la casa")
    print("Usted gastó \(expenses.getLeisure)$ en gastos relacionados a Leisure")
    print("Usted gastó \(expenses.getMedical)$ en gastos relacionados a medico")
    print("Usted gastó \(expenses.getSavings)$ en ahorro")
    if (gastos == ingresos){
        print("CUidado gastas mucho")}
    if (gastos > ingresos){
    print ("Amigo bajale a los gastos")
    let gastomayor = expenses.Gastomayor()
    print(gastomayor)
    }
    if (gastos < ingresos) {print("todo bien :)")}
    case 3:
    print("Ingrese el numero de a que tipo de gasto corresponde: ")
    print("1. Leisure")
    print("2. Medical")
    print("3. Education")
    print("4. Household")
    print("5. Savings")
    let optionals: Int = Int(readLine()!)!
    switch(optionals){
        case 1:
        print("Cuanto gasto?") 
        auxiliar = Float(readLine()!)!
        expenses.leisure += auxiliar
        case 2:
        print("Cuanto gasto?")
        auxiliar = Float(readLine()!)!
        expenses.medical += auxiliar
        case 3:
        print("Cuanto gasto?")
        auxiliar = Float(readLine()!)!
        expenses.education += auxiliar
        case 4:
        print("Cuanto gasto? ")
        auxiliar = Float(readLine()!)!
        expenses.househol += auxiliar
        case 5:
        print("Cuanto gasto?")
        auxiliar = Float(readLine()!)!
        expenses.savings += auxiliar
        default:
        return 
    }
    case 4:
    exit(0)
    default:
    return
    }
}


repeat{
Menu()
Datos()

}while(true)
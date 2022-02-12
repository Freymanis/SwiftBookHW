import Foundation

/*:
 ### Задание 6
 6.1 Создайте перечисление `CalculationType`, содержащее четыре математических действия — *сложение*, *вычитание*, *умножение* и *деление* (если не знаете английские наименования — [translate.google.com](http://translate.google.com))
 */

enum CalculationType {
    case addition
    case subtraction
    case multiplication
    case division
}


let value1 = 1
let value2 = 2
let action = CalculationType.addition

switch action {
case CalculationType.addition:
    print("Результат сложения \(value1) и \(value2) равен \(value1 + value2)")
default:
    print("Error")
}

/*: 6.2 Создайте три константы: число один, число два и тип математической операции(CalculationType).

 В зависимости от значения переменной типа `CalculationType` выполните соответствующую математическую операцию с константами и выведите(print) результат. Для перебора всех возможных результатов используйте конструкцию `switch`. Пример вывода программы: "Результат сложения 6 и 8 равен 14"

 6.3 Создайте перечисление `CurrencyUnit` со следующими членами: `rouble`, `dollar`, `euro`.

 6.4 Внутри перечисления `CurrencyUnit` создайте еще одно перечисление `DollarCountries`, в котором содержится перчень стран, национальной валютой которых является доллар (USA, Canada, Australia)

 6.5 Добавьте в кейс `dollar` ассоциативное значение DollarCountries.

 6.6 Создайте константу типа CurrencyUnit, задайте ей значение доллара Канады.
 */

//let one: CalculationType = 1
//let two: CalculationType = 2

enum CurrencyUnit {
    enum DollarCountries {
        case USA
        case Canada
        case Australia
    }
    
    case rouble
    case dollar(DollarCountries)
    case euro
}

let value: CurrencyUnit = .dollar(.Canada)

//: [Ранее: Задание 5](@previous)  |  задание 6 из 6  |


import Foundation

/*:
 ### Задание 3
 
 3.1 Определите квартал в котором вы родились, используя switch.
 */


enum Quartal: String {
    case one = "Первый квартал"
    case two = "Второй"
    case three = "Третий"
    case four = "Четвертый"
}

let qBirth = Quartal.four

switch qBirth {
case .one:
    print(Quartal.one.rawValue)
case .two:
    print(Quartal.two.rawValue)
case .three:
    print(Quartal.three.rawValue)
case .four:
    print(Quartal.four.rawValue)
}


//: [Ранее: Задание 2](@previous)  |  задание 3 из 6  |  [Далее: Задание 4](@next)

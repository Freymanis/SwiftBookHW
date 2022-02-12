import Foundation

/*:
 ### Задание 5
 5.1 С помощью блоков `case` вы определяете возможные значения, которые может принять выражение. Однако Swift позволяет в пределах одного блока case указать не только на значение рассматриваемого параметра, но и на зависимость от какого-либо условия. Данный функционал реализуется с помощью ключевого слова `where` в блоке `case`.
 
 В этом задании вам необходимо сделать простой валидатор российского номера.
 Если длина номера больше 12, то вывести: сократите номер на N символов
 Если длина номера меньше 12, то вывести: дополните номер на N символов
 Если длина 12 и номер начинается с +7, то вывести: "Номер российский"
 
 (Подсказка: с помощью case проверить длину входного номера, с помощью where - то что он начинается с "+7", в случае, если номер не российский: вывести предупреждение.
 

 
 5.2. Реализуйте ту же логику посредством if else
 
 */

let inputNumber = "+79842794827"
let leightOfNumber = inputNumber.count
let firstSymbols = inputNumber.index(inputNumber.startIndex, offsetBy: 2)
let firstChar = inputNumber.substring(to: firstSymbols)




switch inputNumber {
case inputNumber where leightOfNumber > 12:
    print("Сократите номер на \(leightOfNumber - 12) символов")
case inputNumber where leightOfNumber < 12:
    print("Дополните номер на \(12 - leightOfNumber) символов")
case inputNumber where leightOfNumber == 12 && firstChar == "+7":
    print("Номер российский")
default:
    print("Предупреждение")
}







//: [Ранее: Задание 4](@previous)  |  задание 5 из 6  | [Далее: Задание 6](@next)

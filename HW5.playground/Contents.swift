import UIKit
//:  [Сылка на тесты](https://docs.google.com/forms/d/e/1FAIpQLSfbAnnd3DvDVyB4181e33ZfDP4A_yezovpuvo49fqZ6MPsUSw/viewform)


//: ## Home Work 5
/*:
 ### Задание 1
 Создайте словарь, который содержит результаты игр спортивной команды в чемпионате (например по хоккею). Ключом словаря должно быть название команды соперника, а в качестве значения должен быть массив с результатами игр с этим соперником. Необходимо вывести на консоль результаты игр. Выглядить это должно примерно следующим образом:
 
 - Игра с Салават Юлаев - 3:6
 
 - Игра с Салават Юлаев - 5:5
 
 - Игра с Авангард - 2:1
 
 - Игра с Авангард - 2:3
 
 - Игра с АкБарс - 3:3
 
 - Игра с АкБарс - 1:2
 */

let resultsOfGames = [
    "Салават Юлаев" : ["2:1", "2:3"],
    "Авангард" : ["3:6", "5:5"],
    "АкБарс" : ["3:3", "1:2"]
]

for (teamName, results) in resultsOfGames {
    for result in results {
        print("Игра с \(teamName) - \(result)")
    }
}

/*:
 ### Задание 2
Создайте функцию которая принимает в качестве аргументов день, месяц и год вашего рождения и делает расчет полных прожитых вами дней, месяцев и лет с момента вашего рождения. При вызове функции на консоль должно выходить то же самое сообщение, что и в предыдущих заданиях
 */

func calculateTimeInterval(fromDay day: Int, month: Int, year: Int) {
    
    let currentDate = Date()
    let calendar = Calendar.current
    let dateComponents = DateComponents(year: year, month: month, day: day)
    
    if let someDateTime = calendar.date(from: dateComponents) {
        let dayPassed = calendar.dateComponents([.day], from: someDateTime, to: currentDate).day ?? 0
        let monthPassed = calendar.dateComponents([.month], from: someDateTime, to: currentDate).month ?? 0
        let yearPassed = calendar.dateComponents([.year], from: someDateTime, to: currentDate).year ?? 0
        
        print("\(yearPassed) years, \(monthPassed) months and \(dayPassed) days have passed since")
    }
}

calculateTimeInterval(fromDay: 6, month: 12, year: 1997)

//func myBirthDay (day: Int, mounth: Int, year: Int, currentDay: Int, currentMounth: Int, currentYear: Int) {
//    return my
//}

/*:
 ### Задание 3
 3.1 Создайте функцию, которая считает общую сумму денег, хранящихся в кошельке. В кошельке имеются купюры различного достоинства от 50 до 5000 рублей
 */

func calculationCash(inWallet wallet : [Int]) -> Int {
    var totalCash = 0
    for banknote in wallet {
        totalCash += banknote
    }
    return totalCash
}




//: 3.2 Заполните массив различными купюрами и подсчитайте общую сумму
var wallet = [50, 100, 200, 500, 1000, 5000]
print(calculationCash(inWallet: wallet))

/*:
 ### Задание 4
 4.1 Создайте функцию, которая определяет является ли число четным или нет. В случае, если число является четным, функция должна возвращать `true`. Иначе - `false`. Подумайте над названием функции, оно должно быть ёмким и в то же время не очень длинным
 */

func isEvenNumber (_ number: Int) -> Bool {
    return number % 2 == 0
}
isEvenNumber(1)

/*:
4.2 Создайте функцию, которая определяет делится ли число на *3* без остатка. Функция так же должна возвращать булево значение. Так же подумайте над названием функции
*/

func result2 (_ value: Int) -> Bool {
    return value % 3 == 0
}

result2(4)

/*:
 4.3 Создайте функцию, которая создает возрастающий массив чисел в интервале от *x* до *y*. Данный интервал должен определять пользователь при вызове функции. Если хотите усложить задание, то пусть данная функция создает массив случайных чисел в заданном интервале с уникальными значениями
 */
func createArray(from start: Int, to end: Int) -> [Int] {
    var array: [Int] = []
    for count in start...end {
        array.append(count)
    }
    return array
}

/*:
4.4 Создайте массив чисел от *1* до *100*, используя для этого вышесозданную функцию
 */
var array = createArray(from: 1, to: 100)


/*:
 4.5 Создайте функции для удаления всех четных чисел из массива и чисел, которые делятся на *3*. Для определения четного числа и числа которое делится на *3* используйте ранее созданные функции из задания **4.1** и **4.2**.
 */

func getFilteredArray (from array: [Int], deletePredicate closure: (Int) -> Bool) -> [Int] {
    var resultArray = [Int]()
    for number in array {
        if !closure(number) {
            resultArray.append(number)
        }
    }
    return resultArray
}

let oddNumbers = getFilteredArray(from: array, deletePredicate: isEvenNumber)
let devisibleByTree = getFilteredArray(from: array, deletePredicate: { $0 > 0})


// 4.6* Создайте функцию, параметром которой будет год(например, 1987), эта функция должна возвращать век(число) для этого года.
func centuryFromYear(year: Int) -> Int {
    return (year + 99) / 100
}
//Например, для года 1905, функция возвратит 20. Для 1899 возвратит 19



/*:
 5. Создайте функцию, которая генерирует и возвращает массив из N чисел Фибоначчи, N  - это аргумент функции.
 Создайте 2 варианта этой функции:
 а) создайте функцию, используя цикл
 б) создайте рекурсивную функцию
 
 
 Пример:
 Входной параметр:
 let n = 6
 
 Результат: [0, 1, 1, 2, 3, 5]
 */

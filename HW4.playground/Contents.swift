import UIKit

//MARK: - EX1
/*
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */

var resultsOfGames: [String : String]
var myTeam = "Boys"

resultsOfGames = ["Los Angeles Lakers"  : "100:102",
                  "Dallas Mavericks"    : "89:100",
                  "Denver Nuggets"      : "130:118",
                  "Atlanta Hawks"       : "150:140",
                  "Washington Wizards"  : "108:130"
                                                    ]

for (key, value) in resultsOfGames {
    print("\(myTeam) against \(key) scored - \(value)")
}
print("\n")
/*
 ----------------------------------------------------
        BOTH EXAMPLES WORK
 ----------------------------------------------------
 */

//          EXAMPLE 2


//var resultsOfGames: [(key: (String), value: (String))]
//var myTeam = "Boys"
//
//
//resultsOfGames = [(key :"Los Angeles Lakers", value: "100:102"),
//                  (key :"Dallas Mavericks", value: "89:100"),
//                  (key :"Denver Nuggets", value: "130:118"),
//                  (key :"Atlanta Hawks", value: "150:140")
//]
//for (key, value) in resultsOfGames {
//    print("\(myTeam) against \(key) scored - \(value)")
//}

//MARK: - EX2
/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */
var arrayOfCash = [5, 10, 20, 50, 100, 200, 500]

func calculateCash(billsInWallet: [Int]) -> Int{
    var cashTotal = 0
    for cash in billsInWallet {
        cashTotal = cash + cashTotal
    }
    return cashTotal
}
calculateCash(billsInWallet: arrayOfCash)
print(calculateCash(billsInWallet: arrayOfCash))
print("\n")
//MARK: - EX3
/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */

func isEvenNumber(numberParsed: Int) -> Bool {
    var number = true
    if numberParsed % 2 == 0 {
        print("The number \(numberParsed) is even number")
        return number
    } else {
        number = false
        print("The number \(numberParsed) is odd number")
        return number
    }
}

isEvenNumber(numberParsed: 115)
isEvenNumber(numberParsed: 110)

print(isEvenNumber(numberParsed: 115))
print(isEvenNumber(numberParsed: 110))
print("\n")
//MARK: - EX4
/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: then return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */

func createArray (start: Int, end: Int) -> [Int] {
    var returnedNumbers: [Int] = []
    for number in start...end {
        returnedNumbers.append(number)
    }
    return returnedNumbers
}

createArray(start: 1, end: 20)
print(createArray(start: 1, end: 20))
print("\n")
//MARK: - EX5
/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */

var students = ["Ben", "Ivy", "Jordell", "Maxime"]
if let i = students.firstIndex(of: "Maxime") {
    students[i] = "Max"
}
print(students)
// Prints "["Ben", "Ivy", "Jordell", "Max"]"


var array = createArray(start: 1, end: 20)
var checkedArray = isEvenNumber(numberParsed: array)

for checker in array {
    isEvenNumber(numberParsed: array)
    if let checker = array.firstIndex(of: checker) {
//        isEvenNumber(numberParsed: <#T##Int#>)
        array.remove(at: checker)
        print(array)
    }

}

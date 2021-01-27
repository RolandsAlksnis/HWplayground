import UIKit
// MARK: - EX1

/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
 */

// 1.1
var variable1: Float = 2.71
var variable2: Float = 1.61

// 1.2
var sumOfTwoVariables = Double(variable1) + Double(variable2)

// 1.3
print(sumOfTwoVariables)

// MARK: - EX2
/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 */

// 2.1
var numberOne = 101

// 2.2
var numberTwo = 2

// 2.3
let result = numberOne / numberTwo

// 2.4
let remainder = numberOne % numberTwo

// 2.5
print("When dividing \(numberOne) by \(numberTwo), the result is \(result), the remainder is \(remainder)")
// MARK: - EX3
/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */
var price = 1000
var qty = 10
var totalSum: Int = 12000

if qty >= 5 && qty <= 9{
    price = 900
    totalSum = qty * price
} else if qty >= 10 {
    price = 850
    totalSum = qty * price
}


print("New: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
// MARK: - EX4
/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */

var userInputAge: String = "33a"

var convertToInt = Int(userInputAge)

print(convertToInt)

if convertToInt == nil {
    print("userInputAge converted to convertToInt does not contain any value")
} else {
    print("convertToInt:", convertToInt as Any)
}

// MARK: - EX5
/*
 Ex5:
 Calculate the number of years, months, days from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
 */

let dayOfBirth = 1
let monthOfBirth = 9
let yearOfBirth = 1998

// MARK: - EX6
/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */

switch monthOfBirth {
case 1...3:
    print("I was born in the 1st quarter")
case 4...6:
    print("I was born in the 2nd quarter")
case 7...9:
    print("I was born in the 3rd quarter")
case 10...12:
    print("I was born in the 4th quarter")
default:
    print("You are born within 12 months, that means you have to be born in 1 of 4 quarters !")
}

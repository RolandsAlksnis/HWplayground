import UIKit

// MARK: - Ex 1
/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */

var period = 5
var profit = 0.0
var deposit = 500000.0
let rate = 0.10
var totalProfit = 0.0

for _ in 1...period {
    profit = deposit * rate
    print("Profit after iteration: ", profit)
    
    deposit += profit
    print("Deposit after profit: ", deposit)
    
    totalProfit = deposit - 500000.0
    print("TotalProfit: ",totalProfit)
}

print("Amount of income after \(period) years will be \(totalProfit) Eur. My total deposit will be \(deposit) Eur !")

// MARK: - Ex 2
/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */

var arrayOfIntegers = [1,3,3,7,10,24,5551,5,111,20,2020]
var evenNumbers: [Int] = []
for i in arrayOfIntegers {
    if i % 2 == 0 {
        evenNumbers.append(i)
    }
}

print("My even numbers are: \(evenNumbers)")
// MARK: - Ex 3
/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */
var counter = 1             // Has to be atleast 1 shuffle

for _ in 1...5 {
    let randomNumber = Int.random(in: 0...5)
    if randomNumber == 5 {
        break
    } else {
        counter += 1
    }
}

print("Number 5 will be after \(counter) shuffles")
// MARK: - Ex 4
/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */


let electricPost = 10
let climbedInDay = 2
let climbedInNight = 1

var numberOfDays = 0
var metersClimbed = 0
var hourCounter = 0

while metersClimbed < electricPost {
    metersClimbed += climbedInDay
    metersClimbed -= climbedInNight
    numberOfDays += 1
}

print("Bug will spend \(numberOfDays) days to reach top of the post")

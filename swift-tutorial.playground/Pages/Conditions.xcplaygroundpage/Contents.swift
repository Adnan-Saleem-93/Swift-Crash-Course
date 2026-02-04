//: [Previous](@previous)

import Foundation

// if-else conditions
let age = 30
if age > 40 {
	print("You are over the age limit.")
}else if age < 30 {
	print("You are under the age limit.")
}else {
	print("You qualify.")
}

let price = 400
if price >= 400 && price <= 500 {
	print("The price is justified.")
}else if price > 300 || price < 400 {
	print("The price is on sale.")
}else {
	print("The price is over-priced.")
}

// switch statement
enum WeatherCondition {
	case sunny, rainy, windy, overcast
}

var currentWeather = WeatherCondition.overcast

switch currentWeather {
case .rainy:
	print("It is raining today.")
case .sunny:
	print("It is sunny outside.")
case .windy:
	print("It is cold outside.")
default:
	print("The weather is unusual.")
}

// ternary operator
let people = 100
let isFull = people >= 100 ? "Capacity Full." : "Still room for more."
print(isFull)


//: [Next](@next)

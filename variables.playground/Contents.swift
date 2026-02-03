import Foundation


// string
let greeting = "Hello, playground"
print(greeting.count)
print(greeting.uppercased().hasSuffix("ND"))

// string interpolation
let name = "Adnan"
print("My name is \(name)")

// numbers
let num1 = 10
let num2 = 15
var sum = num1 + num2
print(sum)
sum += 5
print("sum after adding 5 more = \(sum)")
let multipleOf = 5
print("sum is multiple of \(multipleOf): \(sum.isMultiple(of: multipleOf))")
print("random number between 1 and 1000 -> \(Int.random(in: 1...1000))")

// decimals
let decimal = 3.5
print(Double(sum)+decimal)

// boolean
var checked = false
checked.toggle()
print(checked)

// arrays
let colors = ["Red","Green","Blue"]
print(colors)
print(colors[0])
print(colors.filter{$0.lowercased().contains("r")})
print(colors.map({$0.uppercased()}))
//colors.append("Yellow")
/// throws Error -> Cannot use mutating member on immutable value: 'colors' is a 'let' constant
var mix : [Any] = ["Red", 2, true, 3.5]
print(mix)
mix.append(colors)
print(mix)
mix.remove(at: 1) // removing "2"
print(mix.count)

// dictionaries
let dict = ["name":"Adnan", "age":"32"]
print(dict)
print(dict["name", default: "name-not-found"])
print(dict["names", default: "names-not-found"])
print(dict.keys)

// sets
var set = Set([1,2,3,4,3,2,1])
print(set)
set.insert(11)
print(set)

// enums
enum Weekdays  {
	case monday, tuesday,wednesday, thursday, friday, saturday, sunday
}

var day = Weekdays.monday
day = .sunday
print(day)

// type annotations
let d : Double = 0.5
let i : Int = 2
let flag : Bool = false
var nameString : String = "Adnan"
let arrOfString : [String] = ["a","b","c"]
let dict2 : [String:Any] = ["name" : "Adnan","age" : 32]
enum Themes {
	case light, dark, system
}
var UI: Themes = Themes.dark

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

// loops
let filesTypes = ["jpeg","png","jpg","txt","doc"]
/// for loops
for type in filesTypes {
	if type == "txt" || type == "doc" {
		continue
	}
	print("File type \(type.uppercased()) is supported")
}
for i in 1..<11 {
	print("5 x \(i) = \(5*i)")
}

/// while loop
print("\nStarting countdown")
var num = 10
while num>0 {
	print("\(num)...")
	num -= 1
}
print("Done")


// functions
///function with return type
func rollDice() -> Int {
	return Int.random(in: 1...6)
}
print("Dice roll result \(rollDice())")
/// function with parameter
func tableOfNumber(number : Int){
	for i in 1...10{
		print("\(number) x \(i) = \(number*i)")
	}
}
tableOfNumber(number: 7)
func sumOfTwoNumbers(num1 : Int, num2 : Int) -> Int {
	return num1 + num2
}
print("sum =", sumOfTwoNumbers(num1: 4, num2: 3))

// returning multiple values (tuples) from functions
func getUser() -> (newName: String, newAge: Int){
	(newName: "John", newAge: 35)
}
print("name ->", getUser().newName)
print("age ->", getUser().newAge)
/// destructuring tuples
let (newName, _) = getUser()
print(newName) /// tuples can be destructed by their name and the ones we don't need can be ignored using "_" (underscore)

// customizing parameter values in functions
/// to avoid passing parameters by name, add "underscore" before the parameter name in the function definition
func isUppercasedOrLowercasedString (_ string : String, _ eval: String){
	if string == string.uppercased(){
		print("string is \(eval)")
		
	}
	else if string == string.lowercased(){
		print("string is \(eval)")
	}
	else {
		print("string is \(eval)")
	}
}
/// now we can pass the parameter without the names
isUppercasedOrLowercasedString("HELLO WORLD","UPPERCASED")
isUppercasedOrLowercasedString("hello world","LOWERCASED")
isUppercasedOrLowercasedString("Hello World","neither UPPERCASED nor LOWERCASED")

/// add "for" before parameter name, if you want to encapsulate the parameter name in the scope of this function,
/// outside of this function, the "number" parameter will be hidden
func printTable(for number : Int, for title: String){
	print("\n\n\(title) \(number)")
	for i in 1...10{
		print("\(number) x \(i) = \(number*i)")
	}
}
printTable(for: 6, for: "Table for")

// passing default values for function parameters
func greetUser(_ name:String, _ formal: Bool = false){
	if formal {
		print("Welcome", name)
	}else{
		print("Hi", name)
	}
}
greetUser("Jason", true)
greetUser("Taylor")

// Error Handling in functions
/// 1. define the errors
enum EmailErrors: Error {
	case required, invalid
}

func checkEmail(_ email: String) throws -> String {
	if email.isEmpty {
		throw EmailErrors.required
	}else if !email.contains("@") || !email.contains(".com"){
		throw EmailErrors.invalid
	}else{
		return "Email OK"
	}
}
do{
	let result = try checkEmail("test@gmail.com")
	print(result)
	let result2 = try checkEmail("xyz@gmai.com")
	print(result2)
}catch EmailErrors.required {
	print("Email is required")
}catch EmailErrors.invalid {
	print("Email is invalid")
}catch{
	print("Email is incorrect.")
}

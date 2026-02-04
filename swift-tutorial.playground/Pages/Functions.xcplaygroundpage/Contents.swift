//: [Previous](@previous)

import Foundation

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


//: [Next](@next)

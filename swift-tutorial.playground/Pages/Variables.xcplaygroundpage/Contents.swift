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

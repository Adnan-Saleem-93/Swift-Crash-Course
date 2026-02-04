//: [Previous](@previous)

import Foundation

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

//: [Next](@next)

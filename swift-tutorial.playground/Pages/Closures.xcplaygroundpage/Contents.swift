//: [Previous](@previous)

import Foundation

// Closures

/// 1. simple closure
let sayHi = {
	print("Hi")
}
sayHi()

/// 2. closure with arguments
let getFullName = { (firstName: String, lastName: String) -> String in
	"\(firstName) \(lastName)"
}
let fullName = getFullName("Adnan","Malik")
print(fullName)


let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
let reverseNamesArray = { (_ s1: String, _ s2: String) -> Bool in
		return s1 > s2
}
let reversedNames = names.sorted(by: reverseNamesArray)
print(reversedNames)
/// OR, we can write the reverseNamesArray directly inside the sorted method, like this:
let reversedNamesInSorted = names.sorted(by: { (s1: String, s2: String) -> Bool in
	return s1 > s2
})
print(reversedNamesInSorted)
/// we can also skip the types of the arguments and return type of the closure
let reversedNamesWithoutTypes = names.sorted(by: { s1, s2 in
	return s1 > s2
})
print(reversedNamesWithoutTypes)
/// we can also skip the return statement
let reversedNamesWithoutExplicitReturn = names.sorted(by: { s1, s2 in s1 > s2})
print(reversedNamesWithoutExplicitReturn)

/// 3. Closure with function as return
let makeCounter = {
	var count = 0
	
	func increment() -> Int {
		count += 1
		return count
	}
	
	return increment
}

let getCount = makeCounter()
print(getCount())
print(getCount())
print(getCount())
/// the value of count is retained within the scope of the makeCounter function

//: [Next](@next)

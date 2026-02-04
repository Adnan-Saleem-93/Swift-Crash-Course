//: [Previous](@previous)

import Foundation

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


//: [Next](@next)

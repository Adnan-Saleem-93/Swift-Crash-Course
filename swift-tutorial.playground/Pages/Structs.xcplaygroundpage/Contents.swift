//: [Previous](@previous)

import Foundation

struct Book {
	let author:String
	let title: String
	let releaseYear: Int
	var edition: Int = 1
	var ratings: Double  = 0
	
	func getDetails(){
		print("\"\(title)\" by \(author), released in \(releaseYear), currently on its \(edition).")
	}
	func getRatings(){
		print("The book has a rating of \(ratings)")
	}
	
	mutating func updateRatings(_ newRatings : Double){
		ratings = newRatings
	}
}

var book = Book(author: "George R. R. Martin", title: "A Song of Ice and Fire", releaseYear: 2006)

book.getDetails()
book.getRatings()
book.updateRatings(4.3)
book.getRatings()


struct Car {
	let name: String
	let model: Int
	var price : Double // in US dollars
	let tax: Double = 5
	
	var currentPrice : Double {
		get{
			price + (tax/100 * price)
		}
		set{
			price = newValue
		}
	}
}

var car = Car(name: "Honda Civic", model: 2005, price: 10000)
var currentPrice = car.currentPrice
print(currentPrice)
car.currentPrice = 15000
print(car.currentPrice)

//: [Next](@next)

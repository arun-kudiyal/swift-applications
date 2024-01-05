import UIKit

struct Book {
    var title:String
    var price:Double?
    var publicationYear: Int?
    var author:String
}

var myBook = Book(title: "Some Book", price: nil, publicationYear: nil, author: "Some Author")
print(myBook)

// Optionals have type too. Int? [Integerr Type Optional]
// var someValue:Int = nil                                  // NOT POSSIBLE
// var someValue:Int? = 100; var someValue:Int? = nil       // POSSIBLE

myBook.price = 9.99
// print(myBook.price)                                          // This is wrapped and can't be diplay

//myBook.price = nil
// print(myBook.price)

myBook.publicationYear = 2008

// FORCEFUL UNWRAPPING
//let actualPublicationYear = myBook.publicationYear              // This is called Forceful Unwarpping
//print(actualPublicationYear)
//
//if(myBook.publicationYear != nil) {
//    let actualPublicationYear = myBook.publicationYear
//    print("Value is availabe")
//    print(actualPublicationYear)                                // This is called Force Unwrapping (using !)
//} else {
//    print("Value is not available")
//}


// UNWRAPPING OPTIONALS
if let actualYear = myBook.publicationYear {
    print("The actual publication year is \(actualYear)")
} else {
    print("The actual publication year is not available")
}


// FUNCTIONS AND OPTIONALS - Return Values
let string = "hello"
let possibleAns = Int(string)
if let myAns = Int(string) {
    print(myAns)
} else {
    print("nil")
}

func printFullName(firstName: String, middleName: String?, lastName: String) {
    if let middleName = middleName {
        print("\(firstName) \(middleName) \(lastName)")
    } else {
        print("\(firstName) \(lastName)")
    }
}
printFullName(firstName: "Arun", middleName: nil, lastName: "Kudiyal")
printFullName(firstName: "Arun", middleName: "Something", lastName: "Kudiyal")


// NOTE:- Functions can return an optional value too
// void findValue = () -> String?                   // Only gets assigned to an Optional



// FAILABLE INSTANCE

struct Toddler {
    var birthName: String
    var monthsOld: Int
    init?(birthName:String, monthsOld: Int) {
        if(monthsOld < 12 || monthsOld > 36) {
            return nil
        } else {
            self.birthName = birthName
            self.monthsOld = monthsOld
        }
    }
}
// Handle the instance creation using if-let
if let toddlerInstance = Toddler(birthName: "Some Birth Name", monthsOld: 15) {
    print(toddlerInstance.birthName)
} else {
    print("NIL")
}


// OPTIONAL CHAINING
struct Person {
    var age:Int
    var residence:Residence?
}

struct Residence {
    var address: Address?
}

struct Address {
    var buildingName: String?
    var city: String?
    var state: String?
}

var address = Address(buildingName: "Some Building", city: "Dehradun", state: "Uttarakhand")
var residence = Residence(address: address)
var person2 = Person(age: 20, residence: residence)

var person3 = Person(age: 34, residence: Residence(address: Address(buildingName: "Another Building", city: "Delhi", state: "Delhi")))

var person = Person(age: 20)
if let theResidence = person.residence {
    if let theAddress = theResidence.address {
        if let theCity = theAddress.city {
            print(theCity)
        } else {
            print("NIL")
        }
    }
}

if let theCityName = person3.residence?.address?.city {
    print(theCityName)
} else {
    print("NIL")
}


// Implicitly Unwrapped Optionals
// The idea is to create an optional whose value may/may not be assigned and I do not need to unwrap it.

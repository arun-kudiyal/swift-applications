// Named Values in Swift
// Constants & Variables
//let pi = 3.14
//print(pi)
//// Type Annotations
//let name:String
//name = "Some Value"

struct Person {
    let firstName:String
    let lastName:String
    
    func sayHello() {
        print("Hello, my name is \(firstName) \(lastName).")
    }
 }
// creating instances of the data type
let aPerson = Person(firstName: "Arun", lastName: "Kudiyal")
let anotherPerson = Person(firstName: "Candance", lastName: "Something")
aPerson.sayHello();
anotherPerson.sayHello();
print(aPerson)


// "is" tells the whether it is a matching type
//let number = 100
//if(number is Int) {
//    print("Yes")
//} else {
//    print("No")
//}


// EXPLICIT TYPE CASTING IN SWIFT
var intVal = 100
var doubleVal = 3.14
// doubleVal = intVal


// Use of Type Annotation
// 1. when you only want to declare not initialise
let myName:String
// 2. for creating charachter, Swift donot have ' ' value
let myChar:Character
// 3.when you add properties to a user defined data types


// OPERATORS :-


// CONTROL FLOW :-
let temp = 100
if temp >= 100 {
    print("Boiling...")
} else {
    print("Not Boiling...")
}

// SWITCH STATEMENTS:-
// Same as C, donot use "break"
// NOT :- 
// -> If you wanna go to the next case, add fallthrough
// -> Add multiple cases, add them "," seperated.
let option = "P"
switch option {
    case "A":
        print ("A")
        fallthrough
    case "B", "P":
        print("B or P")
    case "C":
        print("C")
    default:
        print("Sorry!")
}
// Switch statements in Ranges
let opt = 14
switch opt {
case 0...9:
    print("Your opt is in range of 0 - 9")
case 10...99:
    print("Your opt is in range of 1-100")
default:
    print("Opt not available")
}
// Note:- To perform variable range, we can do it 2 ways :-
// -> case 0..<9 <-----> case 0...8
// -> case ...9 OR case 0...

// Q:-
let temperature = 70
switch temperature {
case 65...75:
    print("Temp is right!")
case ...65:
    print("It's too cold!")
default:
    print("It's to hot!")
}
// Int.min & Int.max is also an option

// Ternary Operator ( ? : )
var largest:Int
let num1 = 10
let num2 = 30
//(num1 > num2) ? largest = num1 : largest = num2

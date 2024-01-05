//import UIKit
////
////// LESSON 1 --> Swift Strings
////
////let someString = ""
////if(someString == "") {
////    print("It is an empty string!")
////}
////
////
////// using isEmpty property => A Boolean value indicating whether a string has no characters :-
////if(someString.isEmpty) {
////    print("String is empty!")
////}
////
////
////// Concatenation vs String Interpolation
////let firstName = "Arun"
////let lastName = "Kudiyal"
////print("\(firstName) \(lastName)")
////print(firstName + " " + lastName)
////
////print("The sum of 10 & 20 is \(10 + 20)")
////
////// String quality with (== and !=) | Case Sensitive
////let str1 = "String One"
////let str2 = "String One"
////print(str1 == str2)             // true
////print(str1 != str2)             // false
////
////
////// Changing cases :- lowercased() and uppercased() -> THE COPY OF CHANGED CASE IS RETURNED.
////let str3 = "january"
////let str4 = "January"
////print( str3.lowercased() == str4.lowercased() )
//////print("Hello".lowercased())           | Can do this too on String literals and Integer literals
////
////// hasPrefix() -> Checks if the string begins with a given prefix
////// hasSuffix() -> Checks if the string ends with a given prefix
////// conatins() -> Checks if the string is conatined in the other string
////
////let myString = "HelloWorld!"
////print(myString.count)
////
////// charAt() -> By type-casting into Array and accessing the index
////let strArray = Array(myString)
////print(strArray[0], strArray[1])
////
////
////// LESSON 2 --> Swift Functions
////
////func printSomething() -> Void {
////    print("Hello...")
////}
////
////// At the function site, the param names are important and should be passed while calling.
////func add(num1:Int, num2:Int) -> Int {
////    return num1 + num2
////}
////let result:Int = add(num1: 10, num2: 20)
////print(result)
////print("The sum is :- \(add(num1: 100, num2: 200))")
////
////
////func printUser(id:Int, name:String, age:Int, weight:Int) -> Void {
////    print("Id: \(id) | Name: \(name) | Age: \(age) | Weight: \(weight)");
////}
////printUser(id: 101, name: "User One", age: 56, weight: 86)
////print(printUser(id: 101, name: "User One", age: 56, weight: 86))
////
////// ARGUMENT LABEL
////// In swift, you can define, differnt external name (name used outside the func) & internal name (name used inside the func)
////// Syntax :- func funcName(extName intName:Type, extName intName: Type) -> ReturnType { ... }
////func sayHello(paramater1 param1:String, parameter2 param2:String) -> String {
////    return "Hello \(param1) \(param2)"
////}
////sayHello(paramater1: "Arun", parameter2: "Kudiyal")
////
////// If we wish to ommit the name of the param, keep the external name to '_', so we can skip the name.
////func multiply(_ num1:Int, to num2:Int) -> Int {
////    return num1 * num2;
////}
////multiply(100, to: 2)
////
////
////// LESSON 3 --> Swift Structures
////
////
////struct Student {
////    var rollNo:Int
////    var name:String
////    var branch:String
////    // Methods in the structure
////    func details() -> String {
////        return "Student Roll No: \(self.rollNo) | Student Name : \(self.name) | Student Branch :  \(self.branch)"
////    }
////}
////// creating instance of the Student
////var studentOne = Student(rollNo: 10123, name: "Student One", branch: "Computer Science")
////print(studentOne)
//////print("Student Roll No: \(studentOne.rollNo) | Student Name : \(studentOne.name) | Student Branch :  \(studentOne.branch)")
////studentOne.details();
////
////// Default Initilisers
////var someStr = String.init()
////print(someStr)
////someStr = String()
////print(someStr)
////if(String.init() == String()) {
////    print(true);
////}
////
////// Default Initialisers for Structures
////struct Odometer {
////    var count:Int = 0;
////}
////var someRef = Odometer()
////print(someRef.count)
////
//
//// Instance Method
//struct Size {
//    private var height:Double;
//    private var width:Double;
//    init(height: Double, width: Double) {
//        self.height = height
//        self.width = width
//    }
//    func area() -> Int {
//        return Int(height * width)
//    }
//    // THIS IS NOT ALLOWED -> Craete it as a mutatuing function
//    //    func setWidth() -> Void  {
//    //        self.height += 1
//    //    }
//
//    mutating func setWidth() -> Void {
//        self.width += 5;
//    }
//    func getWidth() -> Double {
//        return self.width
//    }
//}
//var sizeOne = Size(height: 25.3, width: 30.18)
//let result = sizeOne.area();
//sizeOne.setWidth();
//print(sizeOne.getWidth())
//print(result)
//
//
//// Computed Properties -> Compute other properties based on any one stored property
//// NOTE:- The other way of doing it will be is to create 3 different initialisers, initilaising all different properties.
//
//struct Temp {
//    var celcius:Double
//    init(celcius: Double) {
//        self.celcius = celcius
//    }
//    var fahrenheit:Double {
//        self.celcius * 1.8 + 32
//    }
//    var kelvin:Double {
//        self.celcius + 273.15
//    }
//}
//
//let firstTemp = Temp(celcius: 0)
//print(firstTemp.fahrenheit)
//print(firstTemp.kelvin)
//
//
//// PROPERTY OBSERVERS -> Anytime my property sets/changes, we can excute a function
//struct StepsCounter {
//    var totalSteps:Int = 0 {
//        willSet {
//            print("About to change the total steps to \(newValue)")
//        }
//        didSet {
//            if totalSteps > oldValue {
//                print("Total Steps changed from \(oldValue) to \(self.totalSteps)")
//            }
//        }
//    }
//}
//
//var stepsCounter = StepsCounter()
//stepsCounter.totalSteps += 100
//print(stepsCounter.totalSteps)
//
//
//// Type Properties & Type Methods :- Any properties or methods which are based on the type and not the instance, we write 'static' in it.
//
//// NOTE:- Structs are value types which have copy semantics.
//
//struct Rectangle {
//    var length:Int;
//    var width:Int;
//    init(length: Int, width: Int) {
//        self.length = length
//        self.width = width
//    }
//}
//var rectangleOne = Rectangle(length: 10, width: 10)
//var rectangleTwo = rectangleOne                         // another copy of the values are assigned to reference
//rectangleTwo.length = 20
//print(rectangleOne.length)
//print(rectangleTwo.length)
//
//struct Color {
//    var red:UInt8
//    var green:UInt
//    var blue:UInt8
//
//    static let red:Color = Color(red: 255, green: 0, blue: 0)
//    static let gray:Color = Color(red: 128, green: 128, blue: 128)
//}
//
//print(Color.red)
//print(Color.red)
//
//// Default Initialiser | Member-Wise Initialisers
//
//// NOTE:- We have a class for generating classes with UIKit
//
//
//// CLASSES & INHERITANCE :-
//
//// Syntax of a Struct and Class is almost the same;
//// except for every class do not get any member-wise initisliser by it's own. EITHER OF THE ONE INITIALISER SHOULD BE THERE
//
//// NOTE:- If you do not want to create a member-wise initialiser, then define the value in the class with default values for all the properties, then we get a default initialser.
//
//class Person {
//    let name:String
//    // If I donot create it, compiler throws an error
//    init(name:String) {
//        self.name = name
//    }
//    func sayHello() -> Void {
//        print("Hello \(self.name)")
//    }
//}
//
//var personOne = Person(name: "Arun Kudiyal")
//personOne.sayHello()
//
//
//// Inheritance
//
//// Where a sub-class inherts the properties & methods from the base-class.
//// We have a IS-A relationship in Inheritance.
//// All public properties & methods are inherited from base to sub-class.
//
//class Vehicle {
//    var currentSpeed:Double = 0.0
//
//    init(currentSpeed:Double) {
//        print("VEHICLE INITIALISER")
//        self.currentSpeed = currentSpeed
//    }
//
//    var description:String {
//        "travelling at the speed \(self.currentSpeed) miles per hour."
//    }
//
//    func makeNoise() {
//        print("Vehicle makes a noise...")
//    }
//}
//
//class Bicycle: Vehicle {
//    // Because we have default value, we donot need initialiser for Bicycle.
//    var hasBasket:Bool
//    init(hasBasket:Bool, currentSpeed:Double) {
//        print("BICYCLE INITIALISER")
//        // NOTE:- while defining the value, the order should be initialising self properties then call super.init()
//        self.hasBasket = hasBasket
//        super.init(currentSpeed: currentSpeed)
//    }
//}
//
//class Tandom: Bicycle {
//    var noOfPassengers:Int
//    init(hasBasket: Bool, currentSpeed: Double, noOfPassengers:Int) {
//        self.noOfPassengers = noOfPassengers
//        super.init(hasBasket: hasBasket, currentSpeed: currentSpeed)
//    }
//}
//
//// NOTE:- If we have all the properties with default values in sub-class, the init of the parent is automatically inherited.
//
//var myBicycle = Bicycle(hasBasket: true, currentSpeed: 56.45)
////var myTandom = Tandom(hasBasket: false, currentSpeed: 87.23, noOfPassengers: 2)
////print(myTandom.currentSpeed)
//
//
//// Overiding in Swift:-
//// We can override the methods and properties but we need to put keyword "override" in the sub-class.
//
//// NOTE:- If we have a overridden property / method, then the overridden property / method of the sub-class is called.
//// No way to call the function from the sub-class.
//
//
//// NOTE:- In swift, the classes are refernce types, i.e. the memory address is being stored.
//// If the refence of one object is assigned to another variable, the memory address is copied.
//// Update one reference, all the references will be upadted.
//
//
//// DIFF B/W CLASS & STRUCTURES :-
//// 1. Classes should have a custom initilisers.
//// 2. Inheritance is a concept only in class.
//// 3. Classes are reference-type but structure is a value-type
//
//
//// When to use Classes :-
//// 1. When you're working with a framework that uses classes.
//// 2. When you want to refer to the same instance from multiple classes.
//// 3. When you want to model inheritance.



// SWIFT COLLECTIONS :-


// 1. Array / Arrays | Homogeneous collection of similar types |

//var names = ["Name One", "Name Two", "Name Three"]
// we can specify type too.
var names:[String] = ["Name One", "Name Two", "Name Three"]
print(names[0], names[1], names[2])

// NOTE:- Types should be a very important thing to specify while creating array.
// If we don't, compiler will infer it automatically.

// Array Methods & Array Properties
// 1. .contains() -> returns the boolean value indicating existence.
let nums = [10, 20, 30]
if(nums.contains(200)) {
    print("200 is available")
} else {
    print("200 is not available")
}

// Craeting an empty array
var myArray:[Int] = []                                  // Using type inference
var myArray2: Array<Int> = []                           // Using Array type by mentioning the type <>
var myArray3 = [Int]()                                  // using Array initialiser ; As Arrays is a struct type


// creating an array of reprating types
var oneHundredZeroes = [Int](repeating: 0, count: 50)
print(oneHundredZeroes)

// .count -> returns the count elements
let myCount = oneHundredZeroes.count
print(myCount)

// .isEmpty -> returns true if Array is empty
if(oneHundredZeroes.isEmpty) {
    print("It is empty")
} else {
    print("It is not empty")
}

// append(item) :- Adds the elt/elts at the end of the array
names.append("Name Four")
names += ["Name Five", "Name Six"]
print(names)

// insert(newElement, at: index)
names.insert("Demo Name", at: 2)
print(names)

// remove(at: index)
names.remove(at: 2)
print(names)

// removeAll() -> removes all the elts from the arrays

// popLast() | removeLast() -> Removes the last element from the array
names.removeLast()
print(names)

names.popLast()
print(names)

// Adding elements to a new Array
var smallNums = [0, 1, 2, 3, 4, 5]
var largeNums = [100, 200, 300]
var myNums = smallNums + largeNums
print(myNums)

// Creating an array of arrays | 2D Arrays
var arrayOfArrays = [smallNums, largeNums]
print(arrayOfArrays)
print(arrayOfArrays[0][0])

arrayOfArrays[0].append(6)
print(arrayOfArrays)

// NOTE:- [smallNums + largeNums] will create a 1D array, with all the elts from both the arrays


// 2. Dictionary / Dictionaries :- Helps us contain unordered key-value pair
var dict1 = ["Key1": 10, "Key2": 20, "Key3": 30]
// we can also create dictonar with types
var dict2:[String:Int] = ["Key1": 10, "Key2": 20, "Key3": 30]
print(dict2)

// Craeting an empty dictionary
var someDict1 = [Int:String]()                                      // using default initiliser
var someDict2 = Dictionary<Int, String>()                           // using Dictionary struct initialiser
var someDict3: [Int:String] = [:]                                   // using type inference

// Updating the value
var myDict = [1: "One", 2: "Two", 3: "Three"]
print(myDict)

myDict[1] = "ONE"
print(myDict)

// If the value updated is not available, it will be added.
let added = myDict.updateValue("Four", forKey: 4)
print(myDict)
// but after adding, the value returned is 'nil'
//print(added)


// handling optional values using if-let | THE VALUE IS STILL ADDED TO THE DICT.
if let added = myDict.updateValue("Five", forKey: 5) {
    print(added)
} else {
    print("5 does not exist")
}

print(myDict)


// Removing value from Dict
// For removing, set the value for any key to nil | If the value does not exist, no changes are made.
// Or, you can use removeValue()

myDict[2] = nil
print(myDict)

myDict.removeValue(forKey: 4)
print(myDict)


// Use if-let for handling the cases for Optionals
if let removedValue = myDict.removeValue(forKey: 1) {
    print("\(removedValue) was removed")
}

// Accessing the dict values :-
// NOTE:- dict.keys & dict.values does not give an iterable and ordered values. We have to convert it over on Array.
let keys = Array(myDict.keys)
print(keys)
let values = Array(myDict.values)
print(values)


// LOOPS IN SWIFT :-

// 1. for-loop -> Iterate over a collection / range (...)
for index in 2...10 {
    print("Loop Iteration : \(index)")
}
// i+=2 ???


// If im not intested to name the index, use _
for _ in 0...4 {
    print("Hello...")
}


// Using loops with Arrays Collection
// SYNTAX :- for itrValue in arrName { ... body }
let newNums = [10, 20, 30, 40]
for num in newNums {
    print("\(num)")
}


// for-in works well with Strings too
//let myName = "Arun Kudiyal"
//for alphabet in myName { print("\(alphabet)" + " ") }


// NOTE:- The loop can be enumerated as well, returning back a Tuple; providing the index value
// SYNTAX :- for(index, iteratingValue) in arrayName.enumerated() { ... body }
for (index, num) in newNums.enumerated() {
    print("\(index) -> \(num)")
}


// Loops with Dictionary
let myNewDict = ["One": 1, "Two": 2, "Three": 3, "Four": 4]
// SYNTAX :- for(keyItr, valueItr) in dictName { }
// NOTE:- No sequence is maintained...
for(keyItr, valueItr) in myNewDict {
    print("\(keyItr) --> \(valueItr)")
}


// 2. WHILE LOOPS :-
// While Loops work exactly the same as any other programming language
// NOTE:- Feel free to skip () in while. Eg:- while condition { ... }


// 3. REPEAT-WHILE LOOPS :-
// Works exactly like a do-while loop.
// It works as an exit-controlled loop.

import Foundation
import UIKit

// 1. CustomStringConvertible
class Person: CustomStringConvertible {
    
    // property from CustomStringConvertible --> Get object which returns the string for an instance
    var description: String {
        return "Person - fName - \(fName) | lName - \(lName) | age - \(age) | address - \(address)"
    }
    
    var fName: String
    var lName: String
    var age: Int
    var address: String
    
    init(fName: String, lName: String, age: Int, address: String) {
        self.fName = fName
        self.lName = lName
        self.age = age
        self.address = address
    }
}

var aPerson = Person(fName: "First Name", lName: "Last Name", age: 30, address: "Chandigarh, Chandigarh")
print(aPerson)                                                              // __lldb_expr_3.Person

// This is not applicable as CustomStringConvertible provides description which is a get-only property
// It is get-only when the desciption is used as a computed property

// aPerson.description = "Some other value"             // THIS WORKS IF THE 'description' IS A STORED PROPERTY.



// 2. Equatable

// NOTE:- we need to implement `static func == (lhs: Employee, rhs: Employee) -> Bool {...}` for classes but not neceesarily for struct.
// In structs, all the peoperties are by default compared & returned true; but can be changed for further implementation.


// 3. Codable :- Helps you convert an object into string (JSON /  XML) for server transfers & the other way around
// NOTE:- Codable is the mix of Encodable + Decodable

class Employee: Equatable, Comparable, Codable {
    var firstName: String
    var lastName: String
    var jobTitle: String
    var phoneNumber: String
    
    init(firstName: String, lastName: String, jobTitle: String, phoneNumber: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.jobTitle = jobTitle
        self.phoneNumber = phoneNumber
    }
    
    static func == (lhs: Employee, rhs: Employee) -> Bool {
        lhs.firstName == rhs.firstName && lhs.lastName == rhs.lastName && lhs.jobTitle == rhs.jobTitle && lhs.phoneNumber == rhs.phoneNumber
    }
    
    static func < (lhs: Employee, rhs: Employee) -> Bool {
        lhs.firstName < rhs.firstName && lhs.lastName < rhs.lastName
    }
}

class Company {
    var name: String
    var employees: [Employee]
    
    init(name: String, employees: [Employee]) {
        self.name = name
        self.employees = employees
    }
}

var someEmployee = Employee(firstName: "Arun", lastName: "Kudiyal", jobTitle: "SDE - 1", phoneNumber: "7456951150")
var someAnotherEmployee = Employee(firstName: "Bharat", lastName: "Devgan", jobTitle: "SDE - 2", phoneNumber: "123456789")
var someOtherEmployee = Employee(firstName: "Arun", lastName: "Kudiyal", jobTitle: "SDE - 1", phoneNumber: "7456951150")

print(someEmployee == someOtherEmployee)
print(someEmployee == someAnotherEmployee)
// I can use NOT EQULAS, it will automarically be implemented by itself.
print(someEmployee != someAnotherEmployee)


// Comparable

var nums = [10, -2, 3, 0, 12, 44, 9, 1, -1]
print(nums.sort())
print(nums)

print(someEmployee < someOtherEmployee)
print(someEmployee > someOtherEmployee)
print(someEmployee == someOtherEmployee)

// Codable
var employeeOne = Employee(firstName: "First Name", lastName: "Last Name", jobTitle: "Sample Job Title", phoneNumber: "45245638")
var jsonEncoder = JSONEncoder()

var data = try? jsonEncoder.encode(employeeOne)
if let data {
    if let str = String(data: data, encoding: .utf8) {
        print(str)
    } else {
        print("nil")
    }
}


// CREATING YOUR OWN PROTOCOLS
protocol FullyNamed {
    var fullName: String { get }
    func sayFullName()
}


struct User: FullyNamed {
    var fName:String
    var lName:String
    var fullName: String {
        "\(fName) \(lName)"
    }
    func sayFullName() {
        print(fullName)
    }
}


// Delegation :-
protocol Coder {
    func writeCode()
    func writeTestCases()
    func writeDocumentation()
}

class JavaCoder: Coder {
    func writeCode() {
        print("Writting Java Code.")
    }
    func writeTestCases() {
        print("Writing Java Code Test Cases")
    }
    func writeDocumentation() {
        print("Writing Java Code Documentations")
    }
}

//class JavaManager: JavaCoder {
//    func attendMeeting() {
//        print("Attending the Java Meeting")
//    }
//    
//    func goToVacations() {
//        print("Going to Vacations")
//    }
//}

class JavaManager: Coder {
    // An object for the delegation.
    var programmer:JavaCoder = JavaCoder()
    
    func writeCode() {
        // THIS IS THE DELEGATION WHERE THE OTHER OBJECT IS DOING THE JOB
        programmer.writeCode()
    }
    
    func writeTestCases() {
        programmer.writeTestCases()
    }
    func writeDocumentation() {
        programmer.writeDocumentation()
    }
    
    func attendMeeting() {
        print("Attending the Java Meeting")
    }
    
    func goToVacations() {
        print("Going to Vacations")
    }
}

class SwiftCoder: Coder {
    func writeCode() {
        print("Writting Swift Code.")
    }
    func writeTestCases() {
        print("Writing Swift Code Test Cases")
    }
    func writeDocumentation() {
        print("Writing Swift Code Documentations")
    }
}

class SwiftManager: Coder {
    var programmer:SwiftCoder = SwiftCoder()
    
    func writeCode() {
        programmer.writeCode()
    }
    func writeTestCases() {
        programmer.writeTestCases()
    }
    func writeDocumentation() {
        programmer.writeDocumentation()
    }
    
    func attendMeeting() {
        print("Attending the Swift Meeting")
    }
    
    func goToVacations() {
        print("Going to Vacations")
    }
}


// DELEGATE EXAMPLE 2

protocol ShippingDelegate {
    func shipping()
}

protocol PaymentDelegate {
    func paymentMode()
}

class Ecommerce: ShippingDelegate, PaymentDelegate {
    func productListing() {
        print("Listing all the products...")
    }
    func shipping() {
        print("Shipping via FedEx")
    }
    func paymentMode() {
        print("Paid in Cash")
    }
}


// DELEGATE EXAMPLE 3

protocol ButtonDelegate {
    func userTappedButton(_ button: Button) {
        
    }
}

class Button {
    var delgate: ButtonDelegate?
    var title: String = ""
    init(delgate: ButtonDelegate? = nil, title: String) {
        self.delgate = delgate
        self.title = title
    }
    func buttonTapped() {
        delgate?.userTappedButton(Button)
    }
}

var playButton = Button(title: "Play")
var pauseButton = Button(title: "Pause")

class GameController: ButtonDelegate {
    func userTappedButton(_ button: Button) {
        print("Button Clicked...")
        print("Moving the charachter ahead...")
    }
}

class MusicController: ButtonDelegate {
    
    func userTappedButton(_ button: Button) {
        if button.title == "Play" {
            print("Music started playing...")
        } else if button.title == "Stop" {
            print("Music Stopped!")
        }
    }
    
    func playMusic() {
        
    }
    func pauseMusic() {
        
    }
}

var button: Button = Button(title: "jump")
var gameController = GameController()
button.delgate = gameController
button.delgate =
button.buttonTapped()

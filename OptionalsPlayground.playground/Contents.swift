import UIKit

//struct Person {
//    var name: String
//    var address: String
//    var mobNo: Int
//    var alternativeMob: Int?
//}
//
//// Instances if the PErson
//var firstPerson = Person(name: "First Person", address: "Chandigarh", mobNo: 3545372825, alternativeMob: 7463762)
////if(firstPerson.alternativeMob != nil) {
////    let altNo = firstPerson.alternativeMob!
////    print(altNo)
////}
//if let altNo = firstPerson.alternativeMob {
//    print(altNo)
//} else {
//    print("nil")
//}
//
//var anotherVariable = firstPerson.alternativeMob!
//
//var secondPerson = Person(name: "Second Person", address: "Delhi", mobNo: 63728264)
//print(secondPerson.address)
////if(secondPerson.alternativeMob != nil) {
////    let altNo = firstPerson.alternativeMob!
////    print(altNo)
////} else {
////    print("nil")
////}
//
//if let altNo2 = secondPerson.alternativeMob {
//    print(altNo2)
//} else {
//    print("nil")
//}
//
////var anotherVariable2 = secondPerson.alternativeMob!
//
//var randomVar: Int? = nil

//var value: String = "Something Random"
//if let intValue = Int(value) {
//    print(intValue)
//} else {
//    print("\(value) cannot be converted to Int")
//}

struct Student {
    var firstName: String
    var lastName: String
    var percentage: Int
    
    // Failable Intialiser
    init?(firstName: String, lastName: String, percentage: Int) {
        if percentage <= 30 {
            return nil
        } else {
            self.firstName = firstName
            self.lastName = lastName
            self.percentage = percentage
        }
    }
}

if let studentOne = Student(firstName: "Aman", lastName: "Singh", percentage: 65) {
    print(studentOne.firstName)
} else {
    print("nil")
}

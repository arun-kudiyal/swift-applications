import UIKit

// Q.1 :-
let totalMins:Int = 190
let totalHours:Int = Int(totalMins / 60) + 1
var totalAmt:Int = 25;
if totalHours <= 3 {
    totalAmt = 25 * totalHours
} else {
    let remainingHrs:Int = totalHours - 3
    totalAmt = 75 + (40 * remainingHrs)
}
print(totalAmt)


// Q.2 :-
let a:Double = 5
let b:Double = 6
let c:Double = 1
// x^2 + 4x + 2 = 0
// Roots = -b +- sqrt (b^2 - 4 * a * c ) / 2 * a
var root1:Double
var root2:Double
let dRoot:Double = sqrt((b * b) - (4 * a * c))
root1 = (-b + dRoot) / (2 * a)
root2 = (-b - dRoot) / (2 * a)
print(root1)
print(root2)


// Q.3 :-
var someStr:String = "some_string"
if(someStr.hasPrefix("sw") || someStr.hasSuffix("nd")) {
    print(someStr)
} else {
    someStr = "sw" + someStr + "nd"
}
print(someStr)


// Q.4 :-
var myStr = "My_String"
func getLength() -> Int {
    return myStr.count
}
func capitaliseString() -> String {
    return myStr.capitalized
}
func isStringEmpty() -> Bool {
    return myStr.isEmpty
}
func ifStartsWithApp() -> Bool {
    return myStr.hasPrefix("App")
}
func doesEndsWithGram() -> Bool {
    return myStr.hasSuffix("gram")
}
func doesContains(anotherString:String) -> Bool {
    return myStr.contains(anotherString)
}
//func subStringFromARange(rangeStart:Int, rangeEnd:Int) -> String {
//    var mySubStr:String = ""
//    let strArray = Array(myStr)
//    for eachLetter in strArray {
//        mySubStr += eachLetter
//    }
//    return mySubStr
//}
func reverseString() -> String {
    return String(myStr.reversed())
}
func appendString(newString:String) -> String {
    return myStr + newString
}
print(getLength())
print(capitaliseString())
print(isStringEmpty())
print(ifStartsWithApp())
print(doesEndsWithGram())
print(doesContains(anotherString: "My"))
print(reverseString())
print(appendString(newString: "_Appended_String"))

// Q.5 :-
var basicSalary:Double = 20_000
var hra:Double = 0.0
var da:Double = 0.0
if basicSalary <= 10_000 {
    hra = (20/100) * basicSalary
    da = (80 / 100) * basicSalary
} else if basicSalary <= 15_000 {
    hra = (25 / 100) * basicSalary
    da = (90 / 100) * basicSalary
} else if(basicSalary <= 20_000) {
    hra = (30 / 100) * basicSalary
    da = (90 / 100) * basicSalary
} else if basicSalary > 20_000 {
    hra = (30 / 100) * basicSalary
    da = (95 / 100) * basicSalary
}
print(hra)
print(da)

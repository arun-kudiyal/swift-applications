
import Foundation

class Shape : CustomStringConvertible {
    var description: String {
        return "Shape"
    }
}

class Rectangle : Shape {
    var width = 0
    var height = 0
}


var shape = Shape()
print(shape.description)
var rect1 = Rectangle()
var rect2 = Rectangle()


struct Person : Equatable, Comparable, Codable {
    static func < (lhs: Person, rhs: Person) -> Bool {
        lhs.age < rhs.age
    }
    
    var name:String = ""
    var age:Int
}

var person = Person(name:"John", age: 21)
var jsonEncoder = JSONEncoder()

var data = try? jsonEncoder.encode(person)
if let data {
    var str = String(data: data, encoding: .utf8)
    print(str!)
}

var jsonString = "{\"name\":\"John\",\"age\":21}"
if let jsonData = jsonString.data(using: .utf8) {
    let decoder = JSONDecoder()
    var obj = try? decoder.decode(Person.self, from: jsonData)
}









var p1 = Person(name: "Amit", age:21)
var p2 = Person(name:"Amit", age:18)


p1 == p2


var numbers = [1, 3, 100, 99, 3, 4]
var persons = [Person(name:"Amit", age:19), Person(name:"John", age:21), Person(name:"Raj", age:20)]
print(persons.sorted())


protocol Programmer {
    func writeCode()
    func writeTestCases()
    func writeDocumentation()
}

class JavaProgrammer : Programmer {
    func writeCode(){
        print("Write java code")
    }
    
    func writeTestCases() {
        print("Write java test cases")
    }
    
    func writeDocumentation() {
        print("Write java documentation")
    }
}

class SwiftProgrammer : Programmer {
    func writeCode(){
        print("Write Swift code")
    }
    
    func writeTestCases() {
        print("Write Swift test cases")
    }
    
    func writeDocumentation() {
        print("Write Swift documentation")
    }

}

class Manager : Programmer {
    var delegate:Programmer
    init(delegate:Programmer){
        self.delegate = delegate
    }
    
    func writeCode() {
        delegate.writeCode()
    }
    
    func writeTestCases() {
        delegate.writeTestCases()
    }
    
    func writeDocumentation() {
        delegate.writeDocumentation()
    }
    
    func attendMeetings() {
        print("attending meeting")
    }
    
    func takeVacation() {
        print("take vacation")
    }
    
    
}


var manager = Manager(delegate: SwiftProgrammer())
manager.writeCode()

manager.delegate =  JavaProgrammer()
manager.writeCode()

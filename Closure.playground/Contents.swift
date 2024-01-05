import UIKit

//var sayHello = {
//    print(" Hi, It's a closure")
//}
//
//sayHello()
//
//
//func add(x:Int, y:Int) ->Int {
//    x + y
//}
//
func mathOps(x:Int, y:Int, op:(Int, Int)->Int) ->Int {
    return op(x, y)
}

mathOps(x: 8, y: 7, op: { (x:Int, y:Int)->Int in
    return x + y
    
})


mathOps(x: 3, y: 6) { $0 - $1}
//
//
//mathOps(x: 8, y: 7, op: { $0 * $1 })


struct AudioTracks:Equatable, Comparable {
   
    
    var name:String
    var starRating:Int
    var trackNumber:Int
    
    static func == (lhs: AudioTracks, rhs: AudioTracks) -> Bool {
        return lhs.trackNumber == rhs.trackNumber
    }
    
    static func < (lhs: AudioTracks, rhs: AudioTracks) -> Bool {
        lhs.starRating < rhs.starRating
    }
    
}


let track1 = AudioTracks(name: "Bla bla bla", starRating: 4, trackNumber: 3)
let track2 = AudioTracks(name: "ga ga ga ", starRating: 3, trackNumber: 4)
let track3 = AudioTracks(name: "yo yo yo", starRating: 5, trackNumber: 1)

var allTracks = [track1, track2, track3]

track1 < track2


var sortedTracks = allTracks.sorted()
print(sortedTracks)

var sortedTrackOonTrackNumber = allTracks.sorted {
    $0.trackNumber < $1.trackNumber
}
print(sortedTrackOonTrackNumber)



var firstNames = ["Aaron", "Steve", "David"]

var fullNames = firstNames.enumerated().map {
    return String($0 + 1)+"." + $1 + " Smith"
}

print(fullNames)


var numbers = [20, 16, 78, 45, 8, 10, 24]

var numbersLessThan20 = numbers.filter { $0 < 20 }

print(numbersLessThan20)




extension UIColor {
    static var random: UIColor {
        let red = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}

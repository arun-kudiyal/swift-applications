import UIKit

struct Note: Codable {
    let title: String
    let text: String
    let timestamp: Date
}

let newNote:Note = Note(title: "Grocery run", text: "Pick up mayonnaise, mustard, lettuce, tomato, and pickles.", timestamp: Date())
let anotherNote:Note = Note(title: "Dry Cleaner", text: "Need to pick dry cleaner @ 5PM.", timestamp: Date());
let someNode:Note = Note(title: "Get Lunch", text: "Getting Lunch from Restraunt", timestamp: Date())
let notes: [Note] = [newNote, anotherNote, someNode]


// Data could be stored in multiple formats :-
// Plain Text, Binary Data, .plist (Property List), JSON, SQL Queries (SQLite).
// We can store by specifying the location using 'FileManager' class, which follows 'Singleton design pattern'.

//let pListEncoder = PropertyListEncoder()
//if let encodedNote = try? pListEncoder.encode(newNote) {
//    print(encodedNote)
//    let propertyListDecoder = PropertyListDecoder()
//    if let decodedNote = try?
//       propertyListDecoder.decode(Note.self, from: encodedNote) {
//        print(decodedNote)
//    }
//}

let documentDirectory = NSHomeDirectory()
print(documentDirectory)

let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
let archiveURL = documentsDirectory.appendingPathComponent("notes_test_1").appendingPathExtension("plist")
print(archiveURL)

let pListEncoder = PropertyListEncoder()
if let encodedNote = try? pListEncoder.encode(notes) {
    // print(encodedNote)
    
    // Encode data and save it
    try? encodedNote.write(to: archiveURL, options: .completeFileProtection)
    //    let propertyListDecoder = PropertyListDecoder()
    //    if let decodedNote = try?
    //       propertyListDecoder.decode(Note.self, from: encodedNote) {
    //        print(decodedNote)
    //    }
    
    // Reading data and decoding it for printing
    let propertyListDecoder = PropertyListDecoder()
    if let retrievedNoteData = try? Data(contentsOf: archiveURL), let decodedNote = try? propertyListDecoder.decode(Array<Note>.self, from: retrievedNoteData) {
        print(decodedNote)
    }
}

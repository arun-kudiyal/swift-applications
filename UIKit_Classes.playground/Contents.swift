import UIKit                                        // classes for building User Interface of any app. Only avaialble for iOS | mapKit for macOS
import Foundation                                   // no explicit import, UIKit imports Foundation.
import PlaygroundSupport

// Note :- The start 2 letters of the classes, starts with the framework initials (Eg:- UI)
// EXCEPTION :- Foundation needs the initials with 'NS' (Next Step)
var date = Date()
print(date)


// To output, we need to define a view called Frame from UIKit
var viewFrame = CGRect(x:0, y:0, width: 500, height: 500)
var view = UIView(frame: viewFrame)
var labelFrame = CGRect(x:100, y:150, width:200, height:75)

// crate an instance of UIClass
//var myBtn = UIButton()
//var label = UILabel()

var label = UILabel(frame: labelFrame)
label.text = "Hello from UIKit"
label.backgroundColor = UIColor.blue
label.textColor = UIColor.white


view.addSubview(label)
PlaygroundPage.current.liveView = view

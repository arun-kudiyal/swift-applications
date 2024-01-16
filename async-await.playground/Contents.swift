import UIKit
import PlaygroundSupport

// Base URL
let link = "https://api.nasa.gov/planetary/apod"
// Setting query params
let queryParams = ["date": "2005-2-22", "api_key": "OBKkzc6VAVhqa3bs33bEWBDzrrXQVwWc2VE4uzTy"]
let urlQueryItems = queryParams.map({URLQueryItem(name: $0.key, value: $0.value)} )
var components = URLComponents(string: link)
components?.queryItems = urlQueryItems

// let link = "https://api.nasa.gov/planetary/apod?date=2005-2-22&api_key=OBKkzc6VAVhqa3bs33bEWBDzrrXQVwWc2VE4uzTy"

func getDataFromServer() -> () {
    guard let url = components?.url else { return }
    let request = URLRequest(url: url)
    
    // send request to the server
    // URL Session
    // get access to the shared URLSession object
    let session = URLSession.shared
    
    // call the data task function to create a data getter task
    // data task is an async function
    // METHOD - 1
    /* let task = session.dataTask(with: request, completionHandler: {(data, response, error) in
        print("Download Start...")
        guard let data = data else {
            if let error = error {
                print("\(error.localizedDescription)")
            }
            return
        }
        guard let dataStr = String(data: data, encoding: .utf8) else {
            print("Unable to interpret the data")
            return
        }
        print(dataStr)
    })
    task.resume() */
    
    
    // METHOD - 2
    let task = session.dataTask(with: request, completionHandler: {(data, response, error) in
        print("Download Start...")
        guard let data = data else {
            if let error = error {
                print("\(error.localizedDescription)")
            }
            return
        }
        guard let dataStr = String(data: data, encoding: .utf8) else {
            print("Unable to interpret the data")
            return
        }
        print(dataStr)
    })
    task.resume()
    
    // sync way is
    // METHOD - 3
    // let data = try? NSURLConnection.sendSynchronousRequest(request, returning: nil)
    // return String(data: data, encoding: .utf8)
}

getDataFromServer()

PlaygroundPage.current.needsIndefiniteExecution = true

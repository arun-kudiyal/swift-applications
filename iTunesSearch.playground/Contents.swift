import UIKit
import PlaygroundSupport

// Base URL
let link = "https://itunes.apple.com/search"
// Setting query params
let queryParams = ["term": "Selena+Gomez"]
let urlQueryItems = queryParams.map({URLQueryItem(name: $0.key, value: $0.value)} )
var components = URLComponents(string: link)
components?.queryItems = urlQueryItems

func getDataFromServer() -> () {
    guard let url = components?.url else { return }
    let request = URLRequest(url: url)
    let session = URLSession.shared
    
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
}
getDataFromServer()

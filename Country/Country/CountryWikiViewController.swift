//
//  CountryWikiViewController.swift
//  Country
//
//  Created by Arun Kudiyal on 04/01/24.
//

import UIKit
import WebKit

class CountryWikiViewController: UIViewController {
    @IBOutlet weak var webView: WKWebView!
    
    var countryName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://en.wikipedia.org/wiki/\(String(describing: self.countryName))")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }
    
    init?(coder: NSCoder, name: String?) {
        self.countryName = name
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

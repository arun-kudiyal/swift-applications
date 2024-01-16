//
//  DataModel.swift
//  NasaApplication
//
//  Created by Arun Kudiyal on 08/01/24.
//

import Foundation
import UIKit

struct PhotoInfo: Codable {
    var creationDate: String
    var description: String?
    var hdUrl: String
    var mediaType: String
    var serviceVersion: String
    
}

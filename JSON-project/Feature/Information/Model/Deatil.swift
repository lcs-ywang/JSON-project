//
//  DetailedInformation.swift
//  JSON-project
//
//  Created by Yining Wang on 2021-10-13.
//

import Foundation

struct Detail: Decodable {
    let firstname: String
    let lastname: String
    let username: String
    let password: String
    let email: String
    let ip: String
    let macAddress: String
    let website: String
    let image: String
}

extension Detail {
    static let dummydata: [Detail] = [
        
        Detail(firstname: "a", lastname: "a", username: "a", password: "a", email: "a", ip: "a", macAddress: "a", website: "a", image: "a")
    
    ]
}

//
//  DetailedInformation.swift
//  JSON-project
//
//  Created by Yining Wang on 2021-10-13.
//

import Foundation

struct Detail: Decodable, Hashable {
    let UUID: UUID
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

struct JsonData: Decodable {


    var status: String
    var code: Int
    var total: Int
    var data: [String: String]
}


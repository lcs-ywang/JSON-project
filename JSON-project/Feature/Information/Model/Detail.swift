//
//  DetailedInformation.swift
//  JSON-project
//
//  Created by Yining Wang on 2021-10-13.
//

import Foundation

struct JsonData: Hashable, Decodable {
    var status: String
    var code: Int
    var total: Int
    var data: [Detail]
}

struct Detail: Decodable, Hashable {
    let uuid: String
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


//extension JsonData {
//
//    static let dummyData: [Detail] = [
//
//        Detail(uuid: "f770d7cd-6039-3a29-a10e-6e48e5d7f6c4",
//               firstname: "Stone",
//               lastname: "Lowe",
//               username: "uboehm",
//               password: "^a'eOSXB(sS]q5=q",
//               email: "emilia.gorczany@hotmail.com",
//               ip: "113.93.172.211",
//               macAddress: "9E:F4:39:DF:A6:FF",
//               website: "http:\/\/ankunding.com",
//               image: "http:\/\/placeimg.com\/640\/480\/people",
//
//
//    ]
//
//}
//

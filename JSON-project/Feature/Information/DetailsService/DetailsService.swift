//
//  DetailsService.swift
//  JSON-project
//
//  Created by Yining Wang on 2021-10-14.
//

import Foundation

protocol DetailsService {
    func fetchRandomDetails() async throws -> JsonData
}

final class DetailsServiceImpl: DetailsService {
    final func fetchRandomDetails() async throws -> JsonData {
        let urlSession = URLSession.shared
        let url = URL(string: APIconstants.baseUrl.appending("/api/Details"))
        let (data, _) = try await urlSession.data(from: url!)
        
        let parsedData = try JSONDecoder().decode(JsonData.self, from: data)
        dump(parsedData)
        return parsedData
    }
    
}

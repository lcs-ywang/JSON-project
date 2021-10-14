//
//  DetailsService.swift
//  JSON-project
//
//  Created by Yining Wang on 2021-10-14.
//

import Foundation

protocol DetailsService {
    func fetchRandomDetails() async throws -> [Detail]
}

final class DetailsServiceImpl: DetailsService {
    func fetchRandomDetails() async throws -> [Detail] {
        let urlSession = URLSession.shared
        let url = URL(string: APIconstants.baseUrl.appending("/api/Details"))
        let (data, _) = try await urlSession.data(from: url!)
        return try JSONDecoder().decode([Detail].self, from: data)
    }
    
}

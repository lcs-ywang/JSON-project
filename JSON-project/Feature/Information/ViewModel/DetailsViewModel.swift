//
//  DetailsViewModel.swift
//  JSON-project
//
//  Created by Yining Wang on 2021-10-14.
//

import Foundation

protocol DetailsViewModel: ObservableObject {
    func getRandomDetails() async
}
@MainActor
final class DetailsViewModelImpl: DetailsViewModel {
    @Published private(set) var details: [Detail] = []
    private let service: DetailsService
    init(service: DetailsService){
        self.service = service
        
    }
    func getRandomDetails() async {
        do{
            self.details = try await service.fetchRandomDetails()
        } catch {
            print(error)
        }
    }
}


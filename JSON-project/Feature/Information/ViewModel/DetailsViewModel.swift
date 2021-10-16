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
final class DetailsViewModelImpl: DetailsViewModel, ObservableObject {
    @Published private(set) var details: [JsonData] = []
    private let service: DetailsService
    init(service: DetailsService){
        self.service = service
        
    }
    func getRandomDetails() async {
        do{
            let dataDetail = try await service.fetchRandomDetails()
            
            details.append(dataDetail)
        } catch {
            print(error)
        }
    }
    
    func addItem() async {
       await getRandomDetails()
    }
}


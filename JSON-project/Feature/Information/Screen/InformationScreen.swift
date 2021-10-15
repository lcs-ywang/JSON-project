//
//  InformationScreen.swift
//  JSON-project
//
//  Created by Yining Wang on 2021-10-13.
//

import SwiftUI

struct InformationScreen: View {
    
    @StateObject private var viewmodel = DetailsViewModelImpl(service: DetailsServiceImpl())
    
    var body: some View {
        
        VStack {
            
            if viewmodel.details.isEmpty {
            ProgressView()
//                LoadingView(text: "Fetching Details")
            
            } else {
                List{
                    ForEach(viewmodel.details, id: \.data){ item in
                     
                        Detailview(item: item)
                    
                    }
                }
                
            }
        
        }
        .task {
            await viewmodel.getRandomDetails()
        
        }
   
    }
    
}

struct InformationScreen_Previews: PreviewProvider {
    static var previews: some View {
        InformationScreen()
    }
}

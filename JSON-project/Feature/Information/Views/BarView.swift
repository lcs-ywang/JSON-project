//
//  BarView.swift
//  JSON-project
//
//  Created by Yining Wang on 2021-10-15.
//

import SwiftUI

struct BarView: View {
    let detailView: Detailview
    var detailData: Detail
    @State private var updater: Bool = true
    @ObservedObject private var viewmodel = DetailsViewModelImpl(service: DetailsServiceImpl())
    
    var body: some View {
        VStack {
            Text("First Name: \n" + detailData.firstname + "\n").fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.center)
            Text("Last Name: \n" + detailData.lastname + "\n").fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.center)
            Text("User Name: \n" + detailData.username + "\n").fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.center)
            Text("Password: \n" + detailData.password + "\n").fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.center)
            Text("Email: \n" + detailData.email + "\n").fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.center)
            Text("IP: \n" + detailData.ip + "\n").fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.center)
            Text("Mac Address: \n" + detailData.macAddress + "\n").fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.center)
            Text("Website: \n" + detailData.website + "\n").fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.center)
            AsyncImage(url: URL(string: detailData.image)!)
            //
        }.toolbar {
            ToolbarItem(placement: .bottomBar) {
                Button("Press Me") {
                    print(detailView.viewmodel.details)
                    print("Pressed")
                    
//                    fetchRandomDetails()
                    Task {
                        await detailView.viewmodel.getRandomDetails()
                    }
                    print(detailView.viewmodel.details)
                    self.updater.toggle()
                   
                }
            }
        }
    }
}


//struct BarView_Previews: PreviewProvider {
//    static var previews: some View {
//        BarView()
//    }
//}

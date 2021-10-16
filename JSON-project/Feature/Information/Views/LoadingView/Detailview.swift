//
//  Detailview.swift
//  JSON-project
//
//  Created by Yining Wang on 2021-10-15.
//

import SwiftUI

struct Detailview: View {
    
    let item: JsonData
//    @State var updater: Bool = false
    @StateObject private var viewmodel = DetailsViewModelImpl(service: DetailsServiceImpl())
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            
            HStack{
                
//                Image(systemName: "person")
//                    .font(.system(size: 25, weight: .black))
                VStack{
                    
                    ForEach(item.data, id:\.uuid) {
                        detailData in
                        Text("First Name: \n" + detailData.firstname + "\n").fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.center)
                        Text("Last Name: \n" + detailData.lastname + "\n").fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.center)
                        Text("User Name: \n" + detailData.username + "\n").fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.center)
                        Text("Password: \n" + detailData.password + "\n").fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.center)
                        Text("Email: \n" + detailData.email + "\n").fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.center)
                        Text("IP: \n" + detailData.ip + "\n").fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.center)
                        Text("Mac Address: " + detailData.macAddress + "\n").fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.center)
                        Text("Website: \n" + detailData.website + "\n").fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.center)
                        AsyncImage(url: URL(string: detailData.image)!)
    //
                }
              
                }
               
//                Text(item.data)
            }
//            Text(makeAttributedString(title:"Username", label: item.data.firstname))
//            Text(makeAttributedString(title:"Lastname", label: item.data.lastname))
//            lineLimit(2)
        }
        
        .padding()
        .foregroundColor(.black)
        
       
    }
    
//    private func makeAttributedString(title: String, label: String) -> AttributedString{
//        var string = AttributedString("\(title): \(label)")
//        string.foregroundColor = .black
//        string.font = .system(size: 16, weight: .bold)
//
//        if let range = string.range(of: label) {
//            string[range].foregroundColor = .black.opacity(0.8)
//            string[range].font = .system(size: 16, weight: .regular)
//        }
//        return string
//    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        Detailview(comic: Detail.dummyData.first!)
//    }
//}



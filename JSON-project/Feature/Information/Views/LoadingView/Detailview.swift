//
//  Detailview.swift
//  JSON-project
//
//  Created by Yining Wang on 2021-10-15.
//

import SwiftUI

struct Detailview: View {
    
    let item: JsonData
    @State var updater: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            
            HStack{
                Image(systemName: "tv")
                    .font(.system(size: 12, weight: .black))
                Text(item.status)
                ForEach(item.data, id:\.uuid) {
                    detailData in
                    Text(detailData.firstname)
                }
                Button("Refresh") {
                    updater.toggle()
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



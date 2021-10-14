//
//  InformationScreen.swift
//  JSON-project
//
//  Created by Yining Wang on 2021-10-13.
//

import SwiftUI

struct InformationScreen: View {
    var body: some View {
        List{
            ForEach(Detail.dummydata, id: \.firstname){ item in
             
                Detailview(item: item)
            
            }
        }
   
    }
    
}

struct InformationScreen_Previews: PreviewProvider {
    static var previews: some View {
        InformationScreen()
    }
}

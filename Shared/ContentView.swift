//
//  ContentView.swift
//  Shared
//
//  Created by Lucas Goldner on 13.12.20.
//

import SwiftUI

struct ContentView: View {
    @State var animate = false
    var body: some View {
        ZStack{
            Color("Primary")
            
            Image("LBig").resizable().renderingMode(.original).aspectRatio(contentMode: .fit)
                .frame(width: 85, height:85)
                .colorInvert()
        }.ignoresSafeArea(.all, edges: .all)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
           
            .previewDevice("iPhone 12 Pro Max")
    }
}

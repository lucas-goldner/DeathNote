//
//  ContentView.swift
//  Shared
//
//  Created by Lucas Goldner on 13.12.20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        VStack {
            Button(action: {
                for family in UIFont.familyNames.sorted() {
                    let names = UIFont.fontNames(forFamilyName: family)
                    print("Family: \(family) Font names: \(names)")
                }
            }, label: {
                Text("Hey")
            })
            Text("L").font(Font.custom("CloisterBlack-Light", size: 33))
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro Max")
    }
}

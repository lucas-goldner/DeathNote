//
//  HomeView.swift
//  DeathNote
//
//  Created by Lucas Goldner on 13.12.20.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.primary.ignoresSafeArea(.all, edges: .all)
            VStack {
                Spacer()
                Text("Death Note").font(Font.custom("RyukExtra", size: 50)).colorInvert()
                Spacer()
                Button(action: {print("Jo")}){
                    Text("Enter").foregroundColor(.white).font(Font.custom("RyuksHandwriting", size: 50))
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

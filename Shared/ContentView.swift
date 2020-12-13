//
//  ContentView.swift
//  Shared
//
//  Created by Lucas Goldner on 13.12.20.
//

import SwiftUI

struct ContentView: View {
    @State var animate = false
    @State var endSplash = false
    var body: some View {
            NavigationView{
                switch endSplash{
                case false:
                    ZStack{
                        Color("Primary")
                        Image("LBig").resizable().renderingMode(.original).aspectRatio(contentMode: animate ? .fill : .fit)
                                       .frame(width: animate ? nil : 85, height: animate ? nil: 85)
                                       .colorInvert().scaleEffect(animate ? 3 : 1).frame(width: UIScreen.main.bounds.width)
                               }.ignoresSafeArea(.all, edges: .all).onAppear(perform: {
                                   animateSplash()
                               }).opacity(endSplash ? 0:1)
                case true:
                    HomeView()
                }
            }
        }
    func animateSplash(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8){
            withAnimation(Animation.easeOut(duration: 0.4)){
                animate.toggle()
            }
            withAnimation(Animation.linear(duration: 0.35)){
                endSplash.toggle()
                
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro Max")
    }
}

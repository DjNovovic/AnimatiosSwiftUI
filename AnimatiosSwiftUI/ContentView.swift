//
//  ContentView.swift
//  AnimatiosSwiftUI
//
//  Created by Đorđije Novović on 24.8.21..
//

import SwiftUI

struct ContentView: View {
    @State var isAnimating: Bool = false
    let timing: Double = 1.5
    
    var body: some View {
        VStack {
            Button("Animate") {
                isAnimating.toggle()
            }
            .font(.title)
            .frame(width: 200, height: 70)
            .foregroundColor(.white)
            .background(Color.orange)
            .cornerRadius(25)
            .padding()
            
            Text("custom Spring")
                .font(.title)
                .fontWeight(.semibold)
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: isAnimating ? 350 : 50, height: 70)
                // spring() mostly using animation!!!
                .animation(.spring(
                            response: 1.5,  //duration
                            dampingFraction: 0.7, //bounsing?
                            blendDuration: 1) //??
                )
            
            //EasyIN, OUT, INOUT...
            Text("linear")
                .font(.title)
                .fontWeight(.semibold)
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: isAnimating ? 350 : 50, height: 70)
                .animation(.linear(duration: timing))
            Text("easeIn")
                .font(.title)
                .fontWeight(.semibold)
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: isAnimating ? 350 : 50, height: 70)
                .animation(.easeIn(duration: timing))
            Group {
                Text("easeOut")
                    .font(.title)
                    .fontWeight(.semibold)
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: isAnimating ? 350 : 50, height: 70)
                    .animation(.easeOut(duration: timing))
                Text("easeInOut")
                    .font(.title)
                    .fontWeight(.semibold)
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: isAnimating ? 350 : 50, height: 70)
                    .animation(.easeInOut(duration: timing))
            }
            
        }
        .foregroundColor(.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

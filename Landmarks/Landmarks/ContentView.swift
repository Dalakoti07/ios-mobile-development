//
//  ContentView.swift
//  Landmarks
//
//  Created by Saurabh Dalakoti on 15/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(
                    height: 300
                )
            
            CircleImage()
                .offset(y : -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Tutle Rock").font(.title)
                HStack {
                    Text("Joshua Tree National park").font(.subheadline)
                    Spacer()
                    Text("Califonia").font(.subheadline)
                }.font(.subheadline)
                    .foregroundColor(.secondary)
                
                Divider()
                Text("About Tutle Rock").font(.title2)
                Text("Descriptive Text goes here")
            }.padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

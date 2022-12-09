//
//  ContentView.swift
//  Landmarks
//
//  Created by David Lively on 12/6/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack {
                if /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/ {
                    VStack(alignment: .leading) {
                        Text("Turtle Rock")
                            .font(.title)
                        HStack {
                            Text("Joshua Tree Natural Park")
                            Spacer()
                            Text("California")
                                
                        }
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        
                        Divider()
                        
                        Text("About Turtle Rock")
                            .font(.title2)
                        
                        Text("Lorum ipsum, fado grando, libro torreto.")
                    }
                    .padding()
                    
                    Spacer()

                } else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

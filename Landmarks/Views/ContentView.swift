//
//  ContentView.swift
//  Landmarks
//
//  Created by David Lively on 12/6/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        /*
         The .environmentObject passes the model down the views. It can be accessed
         */
        ContentView()
            .environmentObject(ModelData())
    }
}

//
//  LandmarkList.swift
//  Landmarks
//
//  Created by David Lively on 12/9/22.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (3rd generation)", "iPhone 11"], id: \.self) { devicename in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: devicename))
                .previewDisplayName(devicename)
        }
    }
}

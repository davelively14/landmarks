//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by David Lively on 12/11/22.
//

import SwiftUI

struct FavoriteButton: View {
    // Allows for value to bubble up to the data source
    @Binding var isSet: Bool

    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}

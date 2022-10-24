//
//  playButton.swift
//  AppletiniProject
//
//  Created by Stefania Amatrudi on 23/10/22.
//

import SwiftUI

struct playButton: View {
    @State private var isSelected = false
    @State private var isSelected2 = false
    var body: some View {
        playPauseButton(isSelected: $isSelected, color: .red)
            .onTapGesture {
                isSelected.toggle()
                if isSelected {
                    isSelected2 = false
                }
            }
    }
}

struct playButton_Previews: PreviewProvider {
    static var previews: some View {
        playButton()
    }
}

//
//  playPauseButton.swift
//  AppletiniProject
//
//  Created by Stefania Amatrudi on 23/10/22.
//

import SwiftUI

struct playPauseButton: View {
    
    @Binding var isSelected: Bool
    @State var color: Color
    
    var body: some View {
        //play button
        Button(action: {
            print("musica") //Where I can                see "musica"
        }, label: {
            
            Image(systemName:"play.fill").foregroundColor(isSelected ? color : .black)
                .frame(width: 50, alignment: .center)
                .controlSize(.large)
            
        })
        //end play button
        
    }
}

struct playPauseButton_Previews: PreviewProvider {
    static var previews: some View {
        playPauseButton(isSelected: .constant(false), color: .red)
    }
}

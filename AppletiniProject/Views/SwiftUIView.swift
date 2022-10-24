//
//  SwiftUIView.swift
//  AppletiniProject
//
//  Created by Stefania Amatrudi on 23/10/22.
//

import SwiftUI

struct SwiftUIView: View {
    @State var isPlaying : Bool = false
    var body: some View {
        
        Button(action: {
            print("musica") //Where I can                see "musica"
           /* if isPlaying == false {
              isPlaying = true
            }
            else{
                isPlaying = false
            } */
            
            isPlaying.toggle() // fa le stesse cose dell'if,                     vale solo per le booleane
            
        }, label: {
            
            Image(systemName: isPlaying == true ? "pause.fill" : "play.fill" )
                .foregroundColor(.black)
                .frame(width: 50, alignment: .center)
                .controlSize(.large)
            
        })
       
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}

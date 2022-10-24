//
//  ContentView.swift
//  AppletiniProject
//
//  Created by Stefano Sivo on 20/10/22.
//

import SwiftUI

struct ContentView: View {
    var songs: [Song] = Song.getSongs()
    var body: some View {
        
        NavigationStack{
            VStack(alignment: .leading, spacing: 1){
                Text("How are you feeling?")
                .fontWeight(.bold)
                .font(.title)
                .multilineTextAlignment(.leading)
                .padding([.leading, .bottom])
                ButtonsRowView()
                Text("Featured songs")
                .fontWeight(.bold)
                .font(.title)
                .multilineTextAlignment(.leading)
                .padding()
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 20){
                        ForEach(songs) { song in
                            FeaturedSongCard(song: song)
                                .frame(height: 210)
                        }
                    }
                    .padding(.horizontal)
                }
                .navigationTitle("Hello")
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

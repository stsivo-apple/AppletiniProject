//
//  ContentView.swift
//  AppletiniProject
//
//  Created by Stefano Sivo on 20/10/22.
//

import SwiftUI

struct ContentView: View {
    //@AppStorage("shouldShowOnboarding") var shouldShowOnboarding:Bool = true
    //@State var shouldShowOnboarding:Bool = true
    var songs: [Song] = Song.getSongs()
    
    var body: some View {
        
        NavigationStack{
            VStack(alignment: .leading, spacing: 1){
                Text("How are you feeling?")
                .bold()
                .font(.title)
                .multilineTextAlignment(.leading)
                .padding([.leading, .bottom])
                ButtonsRowView()
                .frame(height: 320)
                Text("Featured songs")
                .bold()
                .font(.title)
                .multilineTextAlignment(.leading)
                .padding()
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 20){
                        ForEach(songs) { song in
                            NavigationLink(destination: MusicView(song: song)) {
                                    FeaturedSongCard(song: song)
                                    .frame(height: 210)
                                
                            }
                        }
                    }
                    .padding(.horizontal)
                }
                .navigationTitle("Hello " + (UserDefaults.standard.string(forKey: "username") ?? "User"))
            }
        }.accentColor(.black)
        /*.fullScreenCover(isPresented: $shouldShowOnboarding, content: {
            OnboardingView(shouldShowOnboarding: $shouldShowOnboarding)
        })*/
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

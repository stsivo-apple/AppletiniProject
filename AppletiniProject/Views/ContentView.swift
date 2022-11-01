//
//  ContentView.swift
//  AppletiniProject
//
//  Created by Stefano Sivo on 20/10/22.
//

import SwiftUI
import SwiftUITooltip

struct ContentView: View {
    //@AppStorage("shouldShowOnboarding") var shouldShowOnboarding:Bool = true
    //@State var shouldShowOnboarding:Bool = true
    var songs: [Song] = Song.getFeaturedSongs()
    @State private var showingSheet = false
    //full cover
    @State private var showPlayer = false
    @State private var selectedSong: [Song]?
    
    @State var isFeatured: Bool = false
    
    @State var tooltipVisible = false
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading, spacing: 1){
               
                HStack{
                    
                    Text("Paths")
                        .bold()
                        .font(.title)
                        .multilineTextAlignment(.leading)
                        .padding([.leading, .bottom])
                    
                }
                ButtonsRowView()
                .frame(height: 320)
                
                HStack{
                    
                    Text("Featured songs")
                        .bold()
                        .font(.title)
                        .multilineTextAlignment(.leading)
                        .padding()
                    
                    
                    Button {
                                self.tooltipVisible = !self.tooltipVisible
                                    } label: {
                                        Image(systemName: "info.circle.fill").foregroundColor(.black)
                                    }.popover(isPresented: $tooltipVisible){Text("All the music inside the application \nare property of Riot Games")}
                    
                    
                    
                }
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 20){
                        ForEach(songs) { song in
                            Button{
                                selectedSong = [song]
                                showPlayer = true
                                print(String(song.title))
                            } label: {
                                FeaturedSongCard(song: song)
                                    .frame(height: 210)
                                    .fullScreenCover(isPresented: $showPlayer) {
                                        SongView(isFeatured: true, songs: selectedSong ?? [song])
                                    }
                            }
                        }
                    }
                    .padding(.horizontal)
                    
                }
                .navigationTitle("Hello " + (UserDefaults.standard.string(forKey: "userName") ?? "User"))
            }
        }
        .accentColor(.black)
        
    }
}

struct FullScreenModalView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack {
            Color.primary.edgesIgnoringSafeArea(.all)
            Button("Dismiss Modal") {
                presentationMode.wrappedValue.dismiss()
            }
        }
    }
}

struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    var songs: [Song]
    var body: some View {
        SongView(isFeatured: false, songs: songs)
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

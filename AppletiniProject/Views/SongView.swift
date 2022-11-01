//
//  SongView.swift
//  CoolProjectName
//
//  Created by Stefania Amatrudi on 28/10/22.
//

import SwiftUI
import AVFoundation



struct SongView: View {
    
    @State var toggleRecordStop = "Record"
    var caption:String = "This song is simple, safe, filled with energy and to bring a smile to your face. And it is everything that pop culture is all about"
    @State var scaleBigger = 0.5
    @State var scaleMedium = 0.5
    @State var scaleSmaller = 0.5
    @State var backgroundOffset: CGFloat = 0
    @State var isFeatured: Bool
    
    @Environment (\.dismiss) var dismiss
    
    //@State var counter = Text("0:00")
    
    var color : Color = Color(uiColor: .systemGray6)// need this because the color I use isn't of Color type
    @State var isPlaying : Bool = false // need this to make change the play button  in pause button
    var songs : [Song] // need this to adapt the elements' screen to the song
    
    var body: some View {
        NavigationStack{
            
            
            GeometryReader{ g in
                VStack(alignment: .leading) {
                    VStack (alignment: .leading) {
                        Button{
                            dismiss()
                        } label: {
                            Text("Close")
                        }
                        .ignoresSafeArea()
                        
                        HStack {
                            Text(songs[0].songColorStr)
                                .font(.largeTitle)
                                .bold()
                                .foregroundColor(.black)
                            .multilineTextAlignment(.leading)
                            Rectangle()
                                .foregroundColor(songs[0].songColor)
                                .cornerRadius(10)
                                .frame(maxWidth: .infinity, maxHeight: 30)
                        }
                    }.padding()
                
                
                HStack (alignment: .center, spacing: 0) {
                        ForEach(songs) {song in
                            SongCardView(song: song)
                                .frame(
                                    width:
                                        UIScreen.main.bounds.size.width-50,
                                    height: 490,
                                    alignment: .center)
                                .cornerRadius(10)
                        }
                    }
                    .padding()
                    .padding(.horizontal, 10)
                    .offset(x: (self.backgroundOffset) * g.size.width)
                    .animation(.default)
                }
            }
            .gesture(
                DragGesture()
                    .onEnded({ value in
                        //next song
                        if !isFeatured {
                            if value.translation.width < -10 {
                                if self.backgroundOffset > -1.74 {
                                    self.backgroundOffset -= 0.87
                                    
                                }
                            } else if value.translation.width > 10 {
                                if self.backgroundOffset < 0 {
                                    self.backgroundOffset += 0.87
                                }
                            }
                        }
                    })
            )
            
            //page indicators
            if !isFeatured{
                ZStack{
                    HStack(spacing: 50){
                        
                        //first song
                        Button {
                            self.backgroundOffset = 0
                        } label: {
                            Circle()
                                .fill(songs[0].songColor)
                                .brightness(-0.3)
                                .frame(
                                    width: self.backgroundOffset == 0 ? 40 : 20,
                                    height: self.backgroundOffset == 0 ? 40 : 20)
                                .overlay(
                                    Circle()
                                        .stroke(songs[0].songColor, lineWidth: 5)
                                )
                        }
                        
                        //second song
                        Button {
                            self.backgroundOffset = -0.87
                        } label: {
                            Circle()
                                .fill(songs[0].songColor)
                                .brightness(-0.1)
                                .frame(
                                    width: self.backgroundOffset == -0.87 ? 40 : 20,
                                    height: self.backgroundOffset == -0.87 ? 40 : 20)
                                .overlay(
                                    Circle()
                                        .stroke(songs[0].songColor, lineWidth: 5)
                                )
                        }
                        
                        //third song
                        Button{
                            self.backgroundOffset = -1.74
                        } label: {
                            Circle()
                                .fill(songs[0].songColor)
                                .brightness(0.2)
                                .frame(
                                    width: self.backgroundOffset == -1.74 ? 40 : 20,
                                    height: self.backgroundOffset == -1.74 ? 40 : 20)
                                .overlay(
                                    Circle()
                                        .stroke(songs[0].songColor, lineWidth: 5)
                                )
                        }
                    }
                }
                .padding(.bottom, 80)
            }
        }
    }
    
}


struct SongView_Previews: PreviewProvider {
    static var previews: some View {
        SongView(isFeatured: false, songs: [
            Song(title: "Never Gonna Give You Up", album: "Whenever You Need Somebody", artist: "Rick Astley", image: "wheneverYouNeedSomebody", songColor: Color(UIColor.systemYellow), songColorStr: "YELLOW", infoQuotes: ""),
            Song(title: "Du Hast", album: "Sehnsucht", artist: "Rammstein", image: "sehnsucht", songColor: Color(UIColor.darkGray), songColorStr: "BLACK", infoQuotes: ""),
            Song(title: "Out of Time", album: "Dawn FM", artist: "The Weeknd", image: "dawnFM", songColor: Color(UIColor.systemBlue), songColorStr: "BLUE", infoQuotes: "")
        ])
        //MusicView( song: Song(title: "Du Hast", album: "Sehnsucht", artist: "Rammstein", image: "sehnsucht", songColor: Color(UIColor.darkGray), songColorStr: "BLACK"))
    }
}

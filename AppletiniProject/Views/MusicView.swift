//
//  ContentView.swift
//  CoolProjectName
//
//  Created by Stefania Amatrudi on 21/10/22.
//

import SwiftUI
import AVFoundation



struct MusicView: View {
    
    @State var toggleRecordStop = "Record"
    var caption:String = "This song is simple, safe, filled with energy and to bring a smile to your face. And it is everything that pop culture is all about"
    @State var scaleBigger = 0.5
    @State var scaleMedium = 0.5
    @State var scaleSmaller = 0.5
    @State var backgroundOffset: CGFloat = 0
    
    //@State var counter = Text("0:00")
    
    var color : Color = Color(uiColor: .systemGray6)// need this because the color I use isn't of Color type
    @State var isPlaying : Bool = false // need this to make change the play button  in pause button
    var songs : [Song] // need this to adapt the elements' screen to the song
    @State var mediaplayer: AVAudioPlayer?
    
    var body: some View {
        
        /*ScrollViewReader { scrollView in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(songs){song in
                        MusicCardView(song: song)
                    }
                }
                .padding()
            }
        }*/
        VStack {
            VStack(alignment: .leading) {
                Rectangle()
                    .frame(
                        width: UIScreen.main.bounds.size.width-35,
                        height: 25)
                    .frame(alignment: .top)
                    .foregroundColor(songs[0].songColor)
                    .cornerRadius(10)
                Text(songs[0].songColorStr)
                    .font(.title)
                    .foregroundColor(.black)
                    .bold()
            }
            .padding(.vertical, 20)
            
            //page indicators
            ZStack{
                HStack(spacing: 50){
                    //first song
                    Circle()
                        .fill(Color.yellow)
                        .brightness(-0.2)
                        .frame(
                            width: self.backgroundOffset == 0 ? 40 : 20,
                            height: self.backgroundOffset == 0 ? 40 : 20)
                        .overlay(
                            Circle()
                                .stroke(Color.yellow, lineWidth: 5)
                        )
                    
                    //second song
                    Circle()
                        .fill(Color.yellow)
                        .brightness(-0.1)
                        .frame(
                            width: self.backgroundOffset == -1 ? 40 : 20,
                            height: self.backgroundOffset == -1 ? 40 : 20)
                        .overlay(
                            Circle()
                                .stroke(Color.yellow, lineWidth: 5)
                        )
                    
                    //third song
                    Circle()
                        .fill(Color.yellow)
                        .brightness(0.2)
                        .frame(
                            width: self.backgroundOffset == -2 ? 40 : 20,
                            height: self.backgroundOffset == -2 ? 40 : 20)
                        .overlay(
                            Circle()
                                .stroke(Color.yellow, lineWidth: 5)
                        )
                }
            }
            
            /*HStack(alignment: .center, spacing: 30) {
                ForEach(songs){song in
                    MusicCardView(song: song)
                        .frame(width:
                                UIScreen.main.bounds.size.width-35,
                               alignment: .center)
                        .cornerRadius(10)
                }
            }
            .modifier(ScrollingHStackModifier(
                items: songs.count,
                itemWidth: UIScreen.main.bounds.size.width-35,
                itemSpacing: 30))*/
            GeometryReader{ g in
                    HStack (spacing: 35) {
                        ForEach(songs) {song in
                            MusicCardView(song: song)
                                .frame(
                                    width:
                                        UIScreen.main.bounds.size.width-35,
                                    alignment: .center)
                                .cornerRadius(10)
                        }
                    }
                    .padding()
                    .offset(x: (self.backgroundOffset) * g.size.width)
                    .animation(.default)
            }
            .gesture(
                DragGesture()
                    .onEnded({ value in
                        //next song
                        if value.translation.width < -10 {
                            if self.backgroundOffset > -2 {
                                self.backgroundOffset -= 1
                            }
                        } else if value.translation.width > 10 {
                            if self.backgroundOffset < 0 {
                                self.backgroundOffset += 1
                            }
                        }
                    })
            )
        }
    }
}


struct MusicView_Previews: PreviewProvider {
    static var previews: some View {
        MusicView( songs: [
            Song(title: "Never Gonna Give You Up", album: "Whenever You Need Somebody", artist: "Rick Astley", image: "wheneverYouNeedSomebody", songColor: Color(UIColor.systemYellow), songColorStr: "YELLOW"),
            Song(title: "Du Hast", album: "Sehnsucht", artist: "Rammstein", image: "sehnsucht", songColor: Color(UIColor.darkGray), songColorStr: "BLACK"),
            Song(title: "Out of Time", album: "Dawn FM", artist: "The Weeknd", image: "dawnFM", songColor: Color(UIColor.systemBlue), songColorStr: "BLUE")
        ])
        //MusicView( song: Song(title: "Du Hast", album: "Sehnsucht", artist: "Rammstein", image: "sehnsucht", songColor: Color(UIColor.darkGray), songColorStr: "BLACK"))
    }
}

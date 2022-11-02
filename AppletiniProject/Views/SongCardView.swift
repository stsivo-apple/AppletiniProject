//
//  SongCardView.swift
//  AppletiniProject
//
//  Created by Stefano Sivo on 28/10/22.
//

import SwiftUI
import AVFoundation

struct SongCardView: View {
    
    @State var toggleRecordStop = "Record"
    var caption:String = "This song is simple, safe, filled with energy and to bring a smile to your face. And it is everything that pop culture is all about"
    @State var scaleBigger = 0.5
    @State var scaleMedium = 0.5
    @State var scaleSmaller = 0.5
    
    @State var songOpacity: CGFloat = 0.3
    @State var interactionOpacity: CGFloat = 1
    @State var isPlayDisabled: Bool = false
    
    //@State var counter = Text("0:00")
    
    var color : Color = Color(uiColor: .systemGray6)// need this because the color I use isn't of Color type
    @State var isPlaying : Bool = false // need this to make change the play button  in pause button
    var song : Song // need this to adapt the elements' screen to the song
    @State var mediaplayer: AVAudioPlayer?
    //private var isFirst: Bool = false
    
    var body: some View {
        VStack {
            
            VStack {
                ZStack {
                    Rectangle()
                        .foregroundColor(song.songColor)
                        .aspectRatio(contentMode: .fit)
                        .offset(y:10)
                    Rectangle()
                        .foregroundColor(Color.black)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(8)
                    Image(song.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(8)
                        .opacity(self.songOpacity)
                    
                    
                    VStack {
                        //play button
                        Button {
                            print("musica")
//                                if isPlaying == false {
//                                  isPlaying = true
//                                  playMusic()
//                                  scaleBigger = 1
//                                  scaleMedium = 1
//                                  scaleSmaller = 1
//                                }
//                                else{
//                                    isPlaying = false
//                                    stopMusic()
//                                }
                            
                            if isPlaying == false {
                                isPlaying = true
                                playPause()
                                scaleBigger = 1
                                scaleMedium = 1
                                scaleSmaller = 1
                            }
                            else{
                                isPlaying = false
                                playPause()
                            }
                            
                            if isPlaying{
                                self.isPlayDisabled = true
                                withAnimation {
                                    self.interactionOpacity = 0
                                    self.songOpacity = 1
                                }
                            }
                            
                        } label: {
                            Circle()
                                .foregroundColor(.white)
                                .frame(width: 120)
                                .opacity(self.interactionOpacity)
                                .overlay {
                                    Image(systemName: isPlaying == true ? "pause.fill" : "play.fill" )
                                        .resizable()
                                        .frame(
                                            width: 30,
                                            height: 30)
                                        .foregroundColor(.black)
                                        .opacity(self.interactionOpacity)
                                }
                            
                        }
                        .disabled(self.isPlayDisabled)
                        .padding(.bottom)
                        
                        
                        Text(song.artist)
                            .font(.title2)
                            .foregroundColor(.white)
                            .opacity(self.interactionOpacity)
                        
                        Text(song.title)
                            .font(.title)
                            .bold()
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .opacity(self.interactionOpacity)
                    }
                }.gesture(
                    TapGesture()
                        .onEnded({ value in
                            if self.isPlayDisabled{
                                self.isPlayDisabled = false
                                withAnimation{
                                    self.interactionOpacity = 1
                                    self.songOpacity = 0.3
                                }
                            } else {
                                self.isPlayDisabled = true
                                withAnimation{
                                    self.interactionOpacity = 0
                                    self.songOpacity = 1
                                }
                            }
                        })
                )
                
                Text(song.infoQuotes)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .frame(height: 100)
                    .foregroundColor(.black)
                    .padding()
            }
            .background(Color.white)
            .frame(
                width: UIScreen.main.bounds.size.width-70)
            .cornerRadius(8)
            .shadow(color: Color.black.opacity(0.6), radius: 6)
            
        }
    }
    
    func playMusic() {
        
        let path = Bundle.main.path(forResource: "\(song.title).mp3", ofType:nil)!
        let url = URL(fileURLWithPath: path)
        
        do {
            mediaplayer = try AVAudioPlayer(contentsOf: url) //creats an AudioPlayer variable using the url of the songus
            mediaplayer?.play()
        } catch {
            
        }
    }
    
    func stopMusic() {
            mediaplayer?.pause()
        
    }
    
    //New media player
    func playPause() {
        let path = Bundle.main.path(forResource: "\(song.title).mp3", ofType:nil)!
        let url = URL(fileURLWithPath: path)
        guard let player = mediaplayer else {
            do {
                mediaplayer = try AVAudioPlayer(contentsOf: url) //creats an AudioPlayer variable using the url of the songus
                mediaplayer?.play()
            } catch {
                
            }
            return
        }
        
        if player.isPlaying {
            player.pause()
        } else {
            player.play()
        }
    }
    
}

struct SongCardView_Previews: PreviewProvider {
    static var previews: some View {
        SongCardView(song: Song(title: "Never Gonna Give You Up", album: "Whenever You Need Somebody", artist: "Rick Astley", image: "wheneverYouNeedSomebody", songColor: Color(UIColor.systemYellow), songColorStr: "YELLOW", infoQuotes: ""))
    }
}

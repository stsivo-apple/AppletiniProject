//
//  MusicCardView.swift
//  AppletiniProject
//
//  Created by Stefano Sivo on 26/10/22.
//

import SwiftUI
import AVFoundation

struct MusicCardView: View {
    
    @State var toggleRecordStop = "Record"
    var caption:String = "This song is simple, safe, filled with energy and to bring a smile to your face. And it is everything that pop culture is all about"
    @State var scaleBigger = 0.5
    @State var scaleMedium = 0.5
    @State var scaleSmaller = 0.5
    
    //@State var counter = Text("0:00")
    
    var color : Color = Color(uiColor: .systemGray6)// need this because the color I use isn't of Color type
    @State var isPlaying : Bool = false // need this to make change the play button  in pause button
    var song : Song // need this to adapt the elements' screen to the song
    @State var mediaplayer: AVAudioPlayer?
    //private var isFirst: Bool = false
    
    var body: some View {
            VStack {
                
                
                    Image(song.image)
                         .resizable()
                         .aspectRatio(contentMode: .fit)
                         .frame(height: 170)
                         .cornerRadius(8)
                         .frame(maxWidth: .infinity)
                         .padding(.top, 10)
                    
                    Text(song.artist)
                        .font(.title2)
                        .foregroundColor(.black)
                        .padding(.top)
                    
                    Text(song.title)
                        .font(.title)
                        .bold()
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .padding(.top)
                      
                    /*Text(song.album)
                        .font(.title2)
                        .foregroundColor(.black)
                        .italic()
                        .padding(.bottom, 20)
                    */
                    HStack(alignment: .center, spacing: 50){
                        
                        //Backwaed Button
                        Button {
                            print("musica")
                        } label: {
                            Rectangle()
                                .foregroundColor(.white)
                                .frame(width: 40, height: 40)
                                .overlay {
                                    Image(systemName:"backward.end.fill")
                                        .resizable()
                                        .foregroundColor(.black)
                                        .aspectRatio(contentMode: .fit)
                                }
                        }

                        //play button
                        Button {
                            print("musica")
                            if isPlaying == false {
                              isPlaying = true
                              playMusic()
                              scaleBigger = 1
                              scaleMedium = 1
                              scaleSmaller = 1
                            }
                            else{
                                isPlaying = false
                                stopMusic()
                            }
                        } label: {
                            Rectangle()
                                .foregroundColor(.white)
                                .frame(width: 30, height: 40)
                                .overlay {
                                    Image(systemName: isPlaying == true ? "pause.fill" : "play.fill" )
                                        .resizable()
                                        .foregroundColor(.black)
                                        .aspectRatio(contentMode: .fit)
                                }
                        }
                        
                        //forward button
                        Button {
                            print("musica")
                        } label: {
                            Rectangle()
                                .foregroundColor(.white)
                                .frame(width: 40, height: 40)
                                .overlay {
                                    Image(systemName:"forward.end.fill")
                                        .resizable()
                                        .foregroundColor(.black)
                                        .aspectRatio(contentMode: .fit)
                                }
                        }
                    }
                    .padding(.vertical, 10)
                    Button(action: {}) {
                        
                    }
                    .frame(width: 300, height: 120)
                    .overlay {
                        Text("This song is simple, safe, filled with energy and to bring a smile to your face. And it is everything that pop culture is all about ")
                            .font(.body)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .padding()
                    }
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(song.songColor, lineWidth: 5)
                    )
                    .padding(.top)
                    
                }
    }
    
    func playMusic() {
        
        var mediaplayer: AVAudioPlayer?
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
}

struct MusicCardView_Previews: PreviewProvider {
    static var previews: some View {
        MusicCardView(song: Song(title: "Never Gonna Give You Up", album: "Whenever You Need Somebody", artist: "Rick Astley", image: "wheneverYouNeedSomebody", songColor: Color(UIColor.systemYellow), songColorStr: "YELLOW"))
    }
}

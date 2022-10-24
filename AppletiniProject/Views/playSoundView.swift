//
//  ContentView.swift
//  CoolProjectName
//
//  Created by Stefania Amatrudi on 21/10/22.
//

import SwiftUI
import AVFoundation



struct playSoundView: View {
    
    var color : Color = Color(uiColor: .systemGray6) // need this because the color I use isn't of Color type
    @State var isPlaying : Bool = false // need this to make change the play button  in pause button
    var song : Song // need this to adapt the elements' screen to the song
    @State var mediaplayer: AVAudioPlayer?
    
    var body: some View {
        ZStack{
            
           LinearGradient(colors: [song.songColor.sgrad, song.songColor.egrad], startPoint: .top, endPoint: .center
            )
                .ignoresSafeArea()
            
            VStack {
                
                
                Image(song.image)
                
                    .resizable()
                    .frame(width: 160 , height: 160)
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                    .shadow(radius: 50)
                    .padding(.vertical,5)
                    .cornerRadius(44)
                
                
                Text(song.artist)
                    .font(.system(size: 24))
                    .foregroundColor(song.songColor.textColor)
                    .italic()
                    .padding(.vertical,5)
                    
                
                Text(song.title)
                    .font(.system(size: 36))
                    .foregroundColor(song.songColor.textColor)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.vertical,5)
                  
                    
                Text(song.album)
                    .font(.system(size: 24))
                    .foregroundColor(song.songColor.textColor)
                    .italic()
                    .padding(.bottom, 20)
                
                HStack{
                    
                    //Backwaed Button
                    
                    Button(action: {
                        print("musica") //Where I can                see "musica"
                    }, label: {
                        
                        Image(systemName:"backward.end.fill")
                            .foregroundColor(song.songColor.textColor)
                            .frame(width: 50, alignment: .center)
                            .controlSize(.large)
                        
                    })
                    //end backward button
                    
                    //play button
                    Button(action: {
        
                        print("musica") //Where I can                see "musica"
                        if isPlaying == false {
                          isPlaying = true
                          playMusic()
                        
                        }
                        else{
                            isPlaying = false
                            stopMusic()
                        }
                        
                    }, label: {
                        
                        Image(systemName: isPlaying == true ? "pause.fill" : "play.fill" )
                            .foregroundColor(song.songColor.textColor)
                            .frame(width: 50, alignment: .center)
                            .controlSize(.large)
                        
                    })
                    //end play button
                    
                    //forward button
                    Button(action: {
                        print("musica") //Where I can                see "musica"
                    }, label: {
                        
                        Image(systemName:"forward.end.fill")
                            .foregroundColor(song.songColor.textColor)
                            .frame(width: 50, alignment: .center)
                            .controlSize(.large)
                        
                    })
                    //end forward button
                }
                    .padding(.bottom, 20)
                
                Text("This song is simple, safe, filled with energy and to bring a smile to your face. And it is everything that pop culture is all about ") // i need the variable
                    .font(.system(size: 24))
                    .foregroundColor(song.songColor.textColor)
                    .multilineTextAlignment(.center)
                    
               
                
            }
            .padding()
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
}

struct playSoundView_Previews: PreviewProvider {
    static var previews: some View {
        playSoundView( song: Song(title: "Never Gonna Give You Up", album: "Whenever You Need Somebody", artist: "Rick Astley", image: "wheneverYouNeedSomebody", songColor: SongColor(color: "yellow", sgrad: .orange, egrad: .yellow, textColor: .black)))
    }
}

//
//  FeaturedSongCard.swift
//  AppletiniProject
//
//  Created by Stefano Sivo on 20/10/22.
//

import SwiftUI

struct FeaturedSongCard: View {
    var song: Song
    var body: some View {
        HStack(alignment: .center, spacing: 8) {
            VStack(spacing: 8){
                Text(song.artist)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .foregroundColor(.black)
                Text(song.title)
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .frame(width: 180)
            }
            .padding(.trailing)
            
            Image(song.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 70)
                .cornerRadius(8)
                .frame(maxWidth: .infinity)
                .padding(.trailing)
        }
        .foregroundColor(.white)
        .padding([.top, .leading, .trailing], 15.0)
        .frame(width: 330, height: 200)
        .background(.white)
        .cornerRadius(13)
        .shadow(color: Color.black.opacity(0.2), radius: 4)
        .overlay(
            Rectangle()
            .frame(width: 300, height: 15)
            .frame(alignment: .top)
            .foregroundColor(song.songColor.egrad)
            .cornerRadius(3)
            .padding(.bottom, 160)
        )
        
    }
}
/*
 struct FeaturedSongCard: View {
    var song: Song
    var body: some View {
        HStack(alignment: .center, spacing: 8) {
            Image(song.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 130)
                .cornerRadius(8)
                .frame(maxWidth: .infinity)
            VStack(spacing: 8){
                Text(song.artist)
                    .multilineTextAlignment(.center)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(song.songColor.textColor)
                Text(song.title)
                    .multilineTextAlignment(.center)
                    .font(.title2)
                    .foregroundColor(song.songColor.textColor)
            }
            .padding(.trailing)
            
        }
        .foregroundColor(.white)
        .padding(16)
        .frame(width: 330, height: 250)
        .background(LinearGradient(colors: [song.songColor.sgrad, song.songColor.egrad], startPoint: .top, endPoint: .center)
            )
        .cornerRadius(20)
        
    }
}
*/
struct FeaturedSongCard_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedSongCard(song: Song(title: "Never Gonna Give You Up", album: "Whenever You Need Somebody", artist: "Rick Astley", image: "wheneverYouNeedSomebody", songColor: SongColor(color: "yellow", sgrad: .orange, egrad: .yellow, textColor: .black)))
    }
}

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

struct FeaturedSongCard_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedSongCard(song: Song(title: "Never Gonna Give You Up", album: "Whenever You Need Somebody", artist: "Rick Astley", image: "wheneverYouNeedSomebody", songColor: SongColor(color: "yellow", sgrad: .orange, egrad: .yellow, textColor: .black)))
    }
}

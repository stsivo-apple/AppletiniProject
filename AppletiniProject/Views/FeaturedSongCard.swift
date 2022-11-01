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
                    .bold()
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
            .foregroundColor(song.songColor)
            .cornerRadius(3)
            .padding(.bottom, 150)
        )
        
    }
}

struct FeaturedSongCard_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedSongCard(song: Song(title: "Never Gonna Give You Up", album: "Whenever You Need Somebody", artist: "Rick Astley", image: "wheneverYouNeedSomebody", songColor: Color(UIColor.systemYellow), songColorStr: "YELLOW"))
    }
}

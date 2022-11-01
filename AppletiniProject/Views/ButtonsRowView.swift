//
//  ButtonsRowView.swift
//  AppletiniProject
//
//  Created by Stefano Sivo on 20/10/22.
//

import SwiftUI

struct ButtonsRowView: View {
    var yellowPath: [Song] = Song.getPath(songs: Song.getYellowSongs())
    var blackPath: [Song] = Song.getPath(songs: Song.getBlackSongs())
    var redPath: [Song] = Song.getPath(songs: Song.getRedSongs())
    var bluePath: [Song] = Song.getPath(songs: Song.getBlueSongs())
    var space:CGFloat = 17
    let h:CGFloat = 90
    let w:CGFloat = 110
    @State private var showingSheet = false
    //full cover
    @State private var showPlayerYellow = false
    @State private var showPlayerBlack = false
    @State private var showPlayerRed = false
    @State private var showPlayerBlue = false
    
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: space){
                Button {
                    showPlayerRed = true
                } label: {
                    
                    Button(action: { }) {
                        
                    }
                    .frame(width: w, height: h)
                    .foregroundColor(.black)
                    .background(Color(UIColor.white))
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.2), radius: 4)
                    .fullScreenCover(isPresented: $showPlayerRed) {
                        SongView(isFeatured: false, songs: redPath)
                    }
                    .overlay(
                        Text("RED")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .frame(maxHeight: .infinity, alignment: .bottom)
                        .font(.body)
                        .fontWeight(.bold)
                        .padding(10)
                    )
                    .overlay(
                        Rectangle()
                        .frame(width: 90, height: 40)
                        .frame(alignment: .top)
                        .foregroundColor(Color(UIColor.systemRed))
                        .cornerRadius(3)
                        .padding(.bottom, 27)
                    )
                }
                
                Button(action: { }) {
                    
                }
                .frame(width: w, height: h)
                .foregroundColor(.black)
                .background(Color(UIColor.white))
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.2), radius: 4)
                .overlay(
                    Text("ORANGE")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(maxHeight: .infinity, alignment: .bottom)
                    .font(.body)
                    .fontWeight(.bold)
                    .padding(10)
                )
                .overlay(
                    Rectangle()
                    .frame(width: 90, height: 40)
                    .frame(alignment: .top)
                    .foregroundColor(Color(UIColor.systemOrange))
                    .cornerRadius(3)
                    .padding(.bottom, 27)
                )
                
                Button {
                    showPlayerYellow = true
                } label: {
                    Button(action: {}) {
                        
                    }
                    .frame(width: w, height: h)
                    .foregroundColor(.white)
                    .background(Color(UIColor.white))
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.2), radius: 4)
                    .fullScreenCover(isPresented: $showPlayerYellow) {
                        SongView(isFeatured: false, songs: yellowPath)
                    }
                    .overlay(
                        Text("YELLOW")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .frame(maxHeight: .infinity, alignment: .bottom)
                        .font(.body)
                        .fontWeight(.bold)
                        .padding(10)
                    )
                    .overlay(
                        Rectangle()
                        .frame(width: 90, height: 40)
                        .frame(alignment: .top)
                        .foregroundColor(Color(UIColor.systemYellow))
                        .cornerRadius(3)
                        .padding(.bottom, 27)
                    )
                        
                }
            }
            
            
            HStack(alignment: .center, spacing: space){
                Button(action: { }) {
                    
                }
                .frame(width: w, height: h)
                .foregroundColor(.black)
                .background(Color(UIColor.white))
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.2), radius: 4)
                .overlay(
                    Text("GREEN")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(maxHeight: .infinity, alignment: .bottom)
                    .font(.body)
                    .fontWeight(.bold)
                    .padding(10)
                )
                .overlay(
                    Rectangle()
                    .frame(width: 90, height: 40)
                    .frame(alignment: .top)
                    .foregroundColor(Color(UIColor.systemGreen))
                    .cornerRadius(3)
                    .padding(.bottom, 27)
                )
                
                Button {
                    showPlayerBlue = true
                } label: {
                        
                    Button(action: { }) {
                        
                    }
                    .frame(width: w, height: h)
                    .foregroundColor(.black)
                    .background(Color(UIColor.white))
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.2), radius: 4)
                    .fullScreenCover(isPresented: $showPlayerBlue) {
                        SongView(isFeatured: false, songs: bluePath)
                    }
                    .overlay(
                        Text("BLUE")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .frame(maxHeight: .infinity, alignment: .bottom)
                        .font(.body)
                        .fontWeight(.bold)
                        .padding(10)
                    )
                    .overlay(
                        Rectangle()
                        .frame(width: 90, height: 40)
                        .frame(alignment: .top)
                        .foregroundColor(Color(UIColor.systemBlue))
                        .cornerRadius(3)
                        .padding(.bottom, 27)
                )
                }
                
                Button(action: { }) {
                    
                }
                .frame(width: w, height: h)
                .foregroundColor(.black)
                .background(Color(UIColor.white))
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.2), radius: 4)
                .overlay(
                    Text("PINK")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(maxHeight: .infinity, alignment: .bottom)
                    .font(.body)
                    .fontWeight(.bold)
                    .padding(10)
                )
                .overlay(
                    Rectangle()
                    .frame(width: 90, height: 40)
                    .frame(alignment: .top)
                    .foregroundColor(Color(UIColor.systemPink))
                    .cornerRadius(3)
                    .padding(.bottom, 27)
                )
            }
            .padding(10)
            
            HStack(alignment: .center, spacing: space){
                Button(action: { }) {
                    
                }
                .frame(width: w, height: h)
                .foregroundColor(.black)
                .background(Color(UIColor.white))
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.2), radius: 4)
                .overlay(
                    Text("PURPLE")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(maxHeight: .infinity, alignment: .bottom)
                    .font(.body)
                    .fontWeight(.bold)
                    .padding(10)
                )
                .overlay(
                    Rectangle()
                    .frame(width: 90, height: 40)
                    .frame(alignment: .top)
                    .foregroundColor(Color(UIColor.systemPurple))
                    .cornerRadius(3)
                    .padding(.bottom, 27)
                )
                
                Button {
                    showPlayerBlack = true
                } label: {
                    Button(action: { }) {
                        
                    }
                    .frame(width: w, height: h)
                    .foregroundColor(.black)
                    .background(Color(UIColor.white))
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.2), radius: 4)
                    .fullScreenCover(isPresented: $showPlayerBlack) {
                        SongView(isFeatured: false, songs: blackPath)
                    }
                    .overlay(
                        Text("BLACK")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .frame(maxHeight: .infinity, alignment: .bottom)
                        .font(.body)
                        .fontWeight(.bold)
                        .padding(10)
                    )
                    .overlay(
                        Rectangle()
                        .frame(width: 90, height: 40)
                        .frame(alignment: .top)
                        .foregroundColor(.black)
                        .cornerRadius(3)
                        .padding(.bottom, 27)
                )
                }
                
                Button(action: { }) {
                    
                }
                .frame(width: w, height: h)
                .foregroundColor(.black)
                .background(Color(UIColor.white))
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.2), radius: 4)
                .overlay(
                    Text("WHITE")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(maxHeight: .infinity, alignment: .bottom)
                    .font(.body)
                    .fontWeight(.bold)
                    .padding(10)
                )
                .overlay(
                    Rectangle()
                    .frame(width: 90, height: 40)
                    .frame(alignment: .top)
                    .foregroundColor(Color(UIColor.systemGray6))
                    .cornerRadius(3)
                    .padding(.bottom, 27)
                )
            }
        }
    }
}

struct ButtonsRowView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsRowView()
    }
}

//
//  ButtonsRowView.swift
//  AppletiniProject
//
//  Created by Stefano Sivo on 20/10/22.
//

import SwiftUI

struct ButtonsRowView: View {
    var space:CGFloat = 25
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: space){
                Button(action: { }) {
                    Text("RED")
                }
                .frame(width: 100, height: 60)
                .foregroundColor(.white)
                .background(Color(UIColor.systemRed))
                .cornerRadius(10)
                
                Button(action: {}) {
                    Text("ORANGE")
                }
                .frame(width: 100, height: 60)
                .foregroundColor(.white)
                .background(Color(UIColor.systemOrange))
                .cornerRadius(10)
                
                Button(action: {}) {
                    Text("YELLOW")
                }
                .frame(width: 100, height: 60)
                .foregroundColor(.white)
                .background(Color(UIColor.systemYellow))
                .cornerRadius(10)
            }
            
            HStack(alignment: .center, spacing: space){
                Button(action: { }) {
                    Text("GREEN")
                }
                .frame(width: 100, height: 60)
                .foregroundColor(.white)
                .background(Color(UIColor.systemGreen))
                .cornerRadius(10)
                
                Button(action: {}) {
                    Text("BLUE")
                }
                .frame(width: 100, height: 60)
                .foregroundColor(.white)
                .background(Color(UIColor.systemBlue))
                .cornerRadius(10)
                
                Button(action: {}) {
                    Text("PINK")
                }
                .frame(width: 100, height: 60)
                .foregroundColor(.white)
                .background(Color(UIColor.systemPink))
                .cornerRadius(10)
            }
            .padding(20)
            
            HStack(alignment: .center, spacing: space){
                Button(action: { }) {
                    Text("PURPLE")
                }
                .frame(width: 100, height: 60)
                .foregroundColor(.white)
                .background(Color(UIColor.systemPurple))
                .cornerRadius(10)
                
                Button(action: {}) {
                    Text("BLACK")
                }
                .frame(width: 100, height: 60)
                .foregroundColor(.white)
                .background(.black)
                .cornerRadius(10)
                
                Button(action: {}) {
                    Text("WHITE")
                }
                .frame(width: 100, height: 60)
                .foregroundColor(.black)
                .background(Color(UIColor.systemGray6))
                .cornerRadius(10)
            }
        }
    }
}

struct ButtonsRowView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsRowView()
    }
}

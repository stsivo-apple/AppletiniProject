//
//  OnboardingView.swift
//  AppletiniProject
//
//  Created by Stefano Sivo on 24/10/22.
//

import SwiftUI

struct OnboardingView: View {
    @Binding var shouldShowOnboarding:Bool
    
    var body: some View {
        TabView{
            PageView(
                title: "Music is in the air",
                subtitle: "It's free!",
                imageName: "speaker.wave.2.fill",
                showDismissButton: false,
                shouldShowOnboarding: $shouldShowOnboarding
            )
            
            PageView(
                title: "Mood",
                subtitle: "Something",
                imageName: "heart",
                showDismissButton: false,
                shouldShowOnboarding: $shouldShowOnboarding
            )
            
            PageView(
                title: "Music",
                subtitle: "More stuff",
                imageName: "music.quarternote.3",
                showDismissButton: false,
                shouldShowOnboarding: $shouldShowOnboarding
            )
            
            PageView(
                title: "What's your name",
                subtitle: "enter here",
                imageName: "house",
                showDismissButton: true,
                shouldShowOnboarding: $shouldShowOnboarding
            )
        }.tabViewStyle(PageTabViewStyle())
        
    }
}

struct PageView: View {
    let title:String
    let subtitle:String
    let imageName:String
    let showDismissButton:Bool
    //@State static var username:String = "User"
    @Binding var shouldShowOnboarding:Bool
    
    var body: some View {
        VStack{
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .padding()
            
            Text(title)
                .font(.system(size: 32))
                .padding()
            
            Text(subtitle)
                .font(.system(size: 24))
                .multilineTextAlignment(.center)
                .foregroundColor(Color(.secondaryLabel))
                .padding()
            
            if showDismissButton {
                Button {
                    shouldShowOnboarding.toggle()
                } label: {
                    Text("Get Started!")
                        .bold()
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50)
                        .background(Color.green)
                        .cornerRadius(6)
                }
            }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

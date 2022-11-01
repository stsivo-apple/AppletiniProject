//
//  OnboardingView.swift
//  AppletiniProject
//
//  Created by Stefano Sivo on 24/10/22.
//

import SwiftUI

struct OnboardingView: View {
    @Binding var shouldShowOnboarding:Bool
    @AppStorage("username") var username = "username"
    
    var body: some View {
        TabView{
//            PageView(
//                title: "Learn through music",
//                subtitle: "It's free!",
//                imageName: "speaker.wave.2.fill",
//                showDismissButton: false,
//                shouldShowOnboarding: $shouldShowOnboarding
//            )
//
//            PageView(
//                title: "Paths",
//                subtitle: "Scroll to go forward and backward in the path",
//                imageName: "heart",
//                showDismissButton: false,
//                shouldShowOnboarding: $shouldShowOnboarding
//            )
//
//            PageView(
//                title: "Music",
//                subtitle: "More stuff",
//                imageName: "music.quarternote.3",
//                showDismissButton: false,
//                shouldShowOnboarding: $shouldShowOnboarding
//            )
            
            /*PageView(
                title: "Welcome!",
                subtitle: "What's your name?",
                imageName: "house",
                showDismissButton: true,
                shouldShowOnboarding: $shouldShowOnboarding
            )*/
            
            OnboardingView1(isShowed: $shouldShowOnboarding)
        }.tabViewStyle(PageTabViewStyle())
        
    }
}

struct PageView: View {
    let title:String
    let subtitle:String
    let imageName:String
    let showDismissButton:Bool
    let colors: [Color] = [Color.red, Color.green, Color.blue, Color.purple, Color.pink]
    @AppStorage("username") var username:String = ""
    @Binding var shouldShowOnboarding:Bool
    
    var body: some View {
        VStack{
            Text(title)
                .font(.system(size: 52))
                .bold()
                .padding()
                .multilineTextAlignment(.center)
            
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .padding()
            
            Text(subtitle)
                .font(.system(size: 24))
                .multilineTextAlignment(.center)
                .foregroundColor(Color(.secondaryLabel))
                .multilineTextAlignment(.center)
                .padding()
            
            if showDismissButton {
                ZStack {
                    TextField("Username", text: $username)
                        .textFieldStyle(.roundedBorder)
                        .textInputAutocapitalization(.never)
                        .frame(width: UIScreen.main.bounds.size.width-150)
                    .padding()
                }
                Button {
                    shouldShowOnboarding.toggle()
                } label: {
                    Text("Get Started!")
                        .bold()
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50)
                        .background(colors.randomElement())
                        .cornerRadius(6)
                }
                .padding(.top, 30)
            }
        }
    }
}


struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(shouldShowOnboarding: .constant(true))
    }
}

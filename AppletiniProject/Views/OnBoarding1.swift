//
//  OnBoarding1.swift
//  AppletiniProject
//
//  Created by Stefania Amatrudi on 01/11/22.
//

import SwiftUI

struct OnboardingView1: View {
    
    @Binding var isShowed: Bool
    @State var userName: String = ""
 

    var body: some View {
        VStack {
            VStack{
                Text("Welcome in\nMOODY")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                    .padding(.bottom, 80.0)
                    .padding(.top, 30.0)
                
                HStack{
                    VStack{
                        // Iniziano degli FS symbols che richiamano l'app
                        Image(systemName: "music.quarternote.3")
                            .foregroundColor(Color(.black))
                            .font(.system(size: 35, weight: .regular))
                            .padding(.bottom, 50.0)
                        
                        Image(systemName: "quote.opening")
                            .foregroundColor(Color(.black))
                            .font(.system(size: 35, weight: .regular))
                            .padding(.bottom, 45.0)
                        
                        }
                    
                   // fine simboli
                    
                    // nome e descrizione delle feature dell app
                    
                    VStack(alignment: .leading, spacing: 10.0){
                        VStack(alignment: .leading, spacing: 10.0) {
                        Text("Daily song")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                            
                        Text("Song suggested daily.")
                            .fontWeight(.regular)
                            .foregroundColor(Color.gray)
                        .multilineTextAlignment(.leading)}
                        .padding(.bottom)
                        
                        VStack(alignment: .leading, spacing: 10.0) {
                            Text("Explanation of the song")
                                .font(.headline)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.leading)
                                
                            Text("Quotes that inform you about the key points of the songs")
                                .fontWeight(.regular)
                                .foregroundColor(Color.gray)
                            .multilineTextAlignment(.leading)}
                        .padding(.bottom)
                        
                            
                    
                            
                    }
                    .padding(.leading)
                    
                }
                
                
                    
            }
        
            VStack{
                
                Text("What's your Username?")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
                
                TextField("Username", text: $userName)
                    .textFieldStyle(.roundedBorder)
                    .textInputAutocapitalization(.never)
                    .frame(width: UIScreen.main.bounds.size.width-150)
                    .padding()
            }
            .padding(.top, 40.0)
            //bottone che mi fa passare all'app
            
            Button(action: {
                UserDefaults.standard.set(userName, forKey: "userName")
                isShowed.toggle()}){
                Text("Listen to your emotions")
                    .fontWeight(.semibold)
                    .padding(.horizontal, 90.0)
                    .padding(.vertical, 15.0)
                        .foregroundColor(.white)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                        }
            
            .padding(.top, 100.0)
        }
        }
    }


/*struct OnboardingView1_Previews: PreviewProvider {
    @State var tmp = true
    static var previews: some View {
        OnboardingView1(isShowed: $tmp)
    }
}
*/


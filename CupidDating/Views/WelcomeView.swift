//
//  WelcomeView.swift
//  CupidDating
//
//  Created by Jerry Lai on 2021-02-21.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        GeometryReader{ geometry in
            NavigationView{
                
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color(red: 247/255, green: 98/255, blue: 89/255), Color(red: 247/255, green: 85/255, blue: 98/255), Color(red: 245/255, green: 39/255, blue: 119/255)]), startPoint: .topTrailing, endPoint: .bottomLeading)
                    
                    VStack {
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        HStack (spacing: 0){
                            Image("logo").resizable().aspectRatio(contentMode: .fit)
                                .frame(width: geometry.size.width*0.54, height: geometry.size.width*0.54)
                            
                            Text("cupid").foregroundColor(.white).font(.system(size: geometry.size.width*0.16, weight: .semibold, design: .default)).offset(x: -geometry.size.width*0.16)
                        }
                        
                        VStack(alignment: .center, spacing: 38) {
                            
                            Text("By tapping Create Account or Sign In, you agree to our Terms. Learn how we process your data in our Privacy Policy and Cookies Policy.")
                                .foregroundColor(.white)
                                .font(.system(size: 16, weight: .medium, design: .default))
                            
                            Text("CREATE ACCOUNT")
                                .foregroundColor(.gray)
                                .font(.system(size: 18, weight: .semibold, design: .default))
                                .frame(width: geometry.size.width*0.8, height: 60)
                                .background(Color.white)
                                .cornerRadius(30)
                            
                            NavigationLink(destination: HomeView().navigationBarTitle("")
                            .navigationBarHidden(true)) {
                                Text("SIGN IN")
                                    .foregroundColor(.white)
                                    .font(.system(size: 18, weight: .semibold, design: .default))
                                    .overlay(RoundedRectangle(cornerRadius: 30)
                                        .stroke(Color.white, lineWidth: 1).frame(width:
                                            geometry.size.width*0.8, height: 60))
                            }
                            
                            
                            Text("Trouble Loggin In?")
                                .foregroundColor(.white)
                                .font(.system(size: 16, weight: .medium, design: .default))
                            
                        }.padding()
                        Spacer()
                    }
                }.edgesIgnoringSafeArea(.all)
                .navigationBarTitle("")
                .navigationBarHidden(true)
            }
            
        }
        
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

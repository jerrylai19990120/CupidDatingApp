//
//  SignInView.swift
//  CupidDating
//
//  Created by Jerry Lai on 2021-02-21.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import SwiftUI

struct SignInView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        GeometryReader { gr in
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(red: 247/255, green: 98/255, blue: 89/255), Color(red: 247/255, green: 85/255, blue: 98/255), Color(red: 245/255, green: 39/255, blue: 119/255)]), startPoint: .topTrailing, endPoint: .bottomLeading)
                
                VStack {
                    VStack(alignment: .center) {
                        Image("logo").resizable().aspectRatio(contentMode: .fit).frame(width: 200, height: 200)
                        
                        Text("LOG IN").foregroundColor(.white)
                            .font(.system(size: 28, weight: .bold, design: .default))
                    }
                    Spacer()
                    VStack(alignment: .leading, spacing: 6) {
                        Text("Email Address").foregroundColor(.white)
                            .font(.system(size: 16, weight: .medium, design: .default))
                        TextField("email address", text: self.$email).textFieldStyle(PlainTextFieldStyle())
                            .frame(height: 30)
                            .padding()
                            .border(Color.white)
                            .background(Color.white)
                            .cornerRadius(10)
                            
                    }.padding()
                    
                    VStack(alignment: .leading, spacing: 6) {
                        Text("Password").foregroundColor(.white)
                            .font(.system(size: 16, weight: .medium, design: .default))
                        SecureField("password", text: self.$password).textFieldStyle(PlainTextFieldStyle())
                            .frame(height: 30)
                            .padding()
                            .border(Color.white)
                            .background(Color.white)
                            .cornerRadius(10)
                    }.padding()
                    Spacer()
                    Button(action: {
                        
                    }) {
                        NavigationLink(destination: HomeView().navigationBarTitle("").navigationBarHidden(true)) {
                            
                            Text("SIGN IN")
                                .foregroundColor(.white)
                                .font(.system(size: 18, weight: .semibold, design: .default))
                                .padding()
                                .frame(width: gr.size.width*0.8)
                                .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.white, lineWidth: 1))
                        }
                        
                        
                    }
                    
                    HStack {
                        Text("Don't have an account?")
                            .foregroundColor(.white)
                            .font(.system(size: 16, weight: .light, design: .default))
                        NavigationLink(destination: CreateAccountView().navigationBarTitle("").navigationBarHidden(true)) {

                            Text("Create Account").foregroundColor(.white)
                                .font(.system(size: 16, weight: .medium, design: .default))
                        }
                        
                    }.padding()
                    Spacer()
                    Spacer()
                    Spacer()
                    
                }//vstack
                
            }.edgesIgnoringSafeArea(.all)//zstack
            
        }//geometry reader
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}

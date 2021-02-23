//
//  ProfileView.swift
//  CupidDating
//
//  Created by Jerry Lai on 2021-02-22.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        GeometryReader { gr in
            ZStack {
                
                //Background
                Rectangle().fill(Color(red: 246/255, green: 247/255, blue: 251/255)).offset(y: gr.size.height*0.6)
                
                Ellipse()
                    .fill(Color.white)
                    .frame(height: gr.size.height*0.2).offset(y: gr.size.height*0.05)
                
                VStack {
                    //nav bar
                    HStack(alignment: .center) {
                        
                        Image(systemName: "person.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: gr.size.width*0.08)
                            .clipped()
                            .cornerRadius(40)
                            .foregroundColor(Color(red: 245/255, green: 39/255, blue: 119/255))
                        Spacer()
                        NavigationLink(destination: HomeView().navigationBarTitle("").navigationBarHidden(true)) {
                            
                            Image("logoSilver").resizable().aspectRatio(contentMode: .fit)
                                .foregroundColor(Color(red: 218/255, green: 223/255, blue: 229/255))
                                .frame(width: gr.size.width*0.08)
                        }
                        
                    }.padding().frame(width: gr.size.width)
                    
                    VStack {
                        Image("examplePic").resizable().aspectRatio(contentMode: .fill).frame(width: gr.size.width*0.36, height: gr.size.width*0.36).cornerRadius(gr.size.width*0.36)
                        
                        HStack {
                            SettingsButton()
                            Spacer()
                            AddMediaButton().offset(y: 30)
                            Spacer()
                            EditInfoButton()
                        }.padding()
                            .padding([.leading, .trailing], 20)
                    }
                    Spacer()
                    
                    VStack {
                        VStack {
                            HStack {
                                Image(systemName: "heart.fill").resizable().aspectRatio(contentMode: .fit).frame(width: 30).foregroundColor(Color(red: 61/255, green: 167/255, blue: 244/255))
                                Text("Increase your chances").foregroundColor(.black)
                                    .font(.system(size: 18, weight: .semibold, design: .default))
                            }
                            Text("Get unlimited likes with Cupid Gold!").foregroundColor(.gray).font(.system(size: 18, weight: .medium, design: .rounded))
                            
                            
                        }.padding().padding(.bottom, 28)
                        
                        Text("MY CUPID GOLD").foregroundColor(Color(red: 245/255, green: 39/255, blue: 119/255))
                            .frame(width: gr.size.width*0.7)
                            .font(.system(size: 18, weight: .semibold, design: .rounded)).padding().background(Color.white).cornerRadius(30).shadow(color: .gray, radius: 3)
                    }
                    
                    
                    
                }.padding(.all, 30)
            }.edgesIgnoringSafeArea(.all)//zstack
            
        }//geometry reader
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

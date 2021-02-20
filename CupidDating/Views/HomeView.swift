//
//  HomeView.swift
//  CupidDating
//
//  Created by Jerry Lai on 2021-02-20.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            GeometryReader {
                gr in
                ZStack {
                    
                    VStack {
                        HStack(alignment: .center) {
                            Image(systemName: "person.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                                .clipped()
                                .cornerRadius(40)
                                .foregroundColor(Color(red: 245/255, green: 39/255, blue: 119/255))
                            Spacer()
                            Text("For You")
                                .font(.system(size: 23, weight: .semibold, design: .default))
                                .foregroundColor(Color(red: 247/255, green: 85/255, blue: 98/255))
                            Spacer()
                            Image(systemName: "bubble.left.and.bubble.right.fill")
                                .resizable().aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                                .foregroundColor(Color(red: 245/255, green: 39/255, blue: 119/255))
                            
                        }.padding()
                        
                        ZStack {
                            GeometryReader {
                                gr in
                                NavigationLink(destination: DetailView().navigationBarTitle("").navigationBarHidden(true)) {
                                    
                                    Image("examplePic").resizable().renderingMode(.original).aspectRatio(contentMode: .fill)
                                        .frame(width: gr.size.width*0.9, height: gr.size.height)
                                        .cornerRadius(20)
                                }
                                
                                
                            }
                            
                            RoundedRectangle(cornerRadius: 30)
                                .fill(Color.white)
                                .opacity(0.5)
                                .frame(height: gr.size.height*0.23)
                                .offset(x: gr.size.width*0.1, y: gr.size.height*0.2)
                            
                            
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Sabrina, 23")
                                    .font(.system(size: 28, weight: .semibold, design: .default))
                                    .foregroundColor(Color(red: 79/255, green: 76/255, blue: 111/255))
                                Text("Fashion Designer at Hermes Head quarter")
                                    .font(.system(size: 18, weight: .semibold, design: .default))
                                    .foregroundColor(Color.gray)
                                
                            }.padding().frame(width: gr.size.width).offset(x: gr.size.width*0.1, y: gr.size.height*0.2)
                            
                            
                            
                        }
                        
                        OptionsBar()
                        
                    }
                    
                }.navigationBarTitle("").navigationBarHidden(true)
            }
           
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

//
//  ContentView.swift
//  CupidDating
//
//  Created by Jerry Lai on 2021-02-20.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            
            VStack {
                HStack(alignment: .center, spacing: 100) {
                    Image(systemName: "person.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .clipped()
                        .cornerRadius(40)
                        .foregroundColor(Color(red: 255/255, green: 203/255, blue: 228/255))
                    
                    Text("For You")
                        .font(.system(size: 23, weight: .semibold, design: .default))
                        .foregroundColor(Color(red: 255/255, green: 203/255, blue: 180/255))
                    
                    Image(systemName: "bubble.left.and.bubble.right.fill")
                        .resizable().aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color(red: 255/255, green: 203/255, blue: 228/255))
                    
                }.padding()
                
                ZStack {
                    GeometryReader {
                        gr in
                        Image("examplePic").resizable().aspectRatio(contentMode: .fill)
                            .frame(width: gr.size.width*0.9, height: gr.size.height)
                            .cornerRadius(20)
        
                    }
                    
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.white)
                        .opacity(0.5)
                    .frame(height: 140)
                    .offset(x: 54, y: 218)
                    
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Sabrina, 23")
                            .font(.system(size: 28, weight: .semibold, design: .default))
                            .foregroundColor(Color(red: 79/255, green: 76/255, blue: 111/255))
                        Text("Fashion Designer at Hermes Head quarter")
                        .font(.system(size: 18, weight: .semibold, design: .default))
                            .foregroundColor(Color.gray)
                            
                        }.padding().frame(width: 320).offset(x: 26, y: 216)
                    
                    
                    
                }
                
                HStack(alignment: .center, spacing: 60) {
                    
                    Image(systemName: "xmark")
                    .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .foregroundColor(.gray)
                        .padding(.all, 26)
                        .background(Color.white)
                        .cornerRadius(40)
                        .shadow(color: .gray, radius: 5, y: 5)
                    
                    Image(systemName: "star.fill")
                    .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .foregroundColor(.blue)
                        .padding(.all, 26)
                        .background(Color.white)
                        .cornerRadius(40)
                        .shadow(color: .gray, radius: 5, y: 5)
                    
                    Image(systemName: "heart.fill")
                    .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .foregroundColor(.red)
                        .padding(.all, 26)
                        .background(Color.white)
                        .cornerRadius(40)
                        .shadow(color: .gray, radius: 5, y: 5)
                }.padding()
                    
            }
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

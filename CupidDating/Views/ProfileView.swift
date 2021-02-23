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
                Rectangle().fill(Color(red: 246/255, green: 247/255, blue: 251/255)).offset(y: gr.size.height*0.66)
                
                Ellipse()
                    .fill(Color.white)
                    .frame(height: gr.size.height*0.2).offset(y: gr.size.height*0.09)
                
                VStack {
                    //nav bar
                    HStack {
                        Spacer()
                        Spacer()
                        Spacer()
                        Image(systemName: "person.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: gr.size.width*0.11)
                            .clipped()
                            .cornerRadius(40)
                            .foregroundColor(Color(red: 245/255, green: 39/255, blue: 119/255))
                        Spacer()
                        Spacer()
                        Image("logoSilver").resizable().aspectRatio(contentMode: .fit)
                            .foregroundColor(Color(red: 218/255, green: 223/255, blue: 229/255))
                            .frame(width: gr.size.width*0.1)
                    }.padding().frame(width: gr.size.width)
                    
                    VStack {
                        Image("examplePic").resizable().aspectRatio(contentMode: .fill).frame(width: gr.size.width*0.36, height: gr.size.width*0.36).cornerRadius(gr.size.width*0.36)
                        
                        HStack {
                            Image("examplePic")
                        }
                    }
                    
                }
            }.edgesIgnoringSafeArea(.all)//zstack
            
        }//geometry reader
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

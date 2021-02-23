//
//  SeeWhoLikedMeView.swift
//  CupidDating
//
//  Created by Jerry Lai on 2021-02-23.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import SwiftUI

struct SeeWhoLikedMeView: View {
    var body: some View {
        GeometryReader { gr in
            VStack {
                HStack(spacing: 16) {
                    Image(systemName: "heart.fill").resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: gr.size.width*0.08)
                        .foregroundColor(Color(red: 235/255, green: 180/255, blue: 86/255))
                    
                    Text("99+ likes").foregroundColor(.black).font(.system(size: 20, weight: .semibold, design: .rounded))
                    Spacer()
                }.padding().frame(width: gr.size.width)
                Divider()
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        HStack(spacing: 20) {
                            ZStack {
                                Image("examplePic").resizable().renderingMode(.original).aspectRatio(contentMode: .fill)
                                    .frame(width: gr.size.width*0.4, height: gr.size.height*0.26).clipped().cornerRadius(10)
                                
                                GeometryReader { geometry in
                                    VStack(alignment: .leading) {
                                        Spacer()
                                        VStack(alignment: .leading, spacing: 0) {
                                            Text("Sarbina, 23")
                                                .font(.system(size: 16, weight: .semibold, design: .default))
                                                .foregroundColor(.white)
                                            
                                            
                                            HStack {
                                                Image(systemName: "mappin.and.ellipse")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .frame(width: geometry.size.width*0.1)
                                                    .foregroundColor(.white)
                                                    .font(Font.title.weight(.semibold))
                                                
                                                Text("18km away")
                                                    .font(.system(size: 16, weight: .semibold, design: .default))
                                                    .foregroundColor(Color.white)
                                            }
                                            
                                        }
                                    }.padding()
                                        .frame(width: geometry.size.width, height: geometry.size.height).offset(x: -geometry.size.width*0.1)
                                    
                                }
                                
                            }.frame(width: gr.size.width*0.4, height: gr.size.height*0.26)
                            
                            ZStack {
                                Image("examplePic").resizable().renderingMode(.original).aspectRatio(contentMode: .fill)
                                    .frame(width: gr.size.width*0.4, height: gr.size.height*0.26).clipped().cornerRadius(10)
                                
                                GeometryReader { geometry in
                                    VStack(alignment: .leading) {
                                        Spacer()
                                        VStack(alignment: .leading, spacing: 0) {
                                            Text("Sarbina, 23")
                                                .font(.system(size: 16, weight: .semibold, design: .default))
                                                .foregroundColor(.white)
                                            
                                            
                                            HStack {
                                                Image(systemName: "mappin.and.ellipse")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .frame(width: geometry.size.width*0.1)
                                                    .foregroundColor(.white)
                                                    .font(Font.title.weight(.semibold))
                                                
                                                Text("18km away")
                                                    .font(.system(size: 16, weight: .semibold, design: .default))
                                                    .foregroundColor(Color.white)
                                            }
                                            
                                        }
                                    }.padding()
                                        .frame(width: geometry.size.width, height: geometry.size.height).offset(x: -geometry.size.width*0.1)
                                    
                                }
                                
                            }.frame(width: gr.size.width*0.4, height: gr.size.height*0.26)
                        }
                    }
                }
                
                
                
                Spacer()
            }
            
        }
       
    }
}

struct SeeWhoLikedMeView_Previews: PreviewProvider {
    static var previews: some View {
        SeeWhoLikedMeView()
    }
}

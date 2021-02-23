//
//  DetailView.swift
//  CupidDating
//
//  Created by Jerry Lai on 2021-02-20.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        GeometryReader { gr in
            ZStack {
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading) {
                        
                        ZStack(alignment: .leading) {
                            Image("examplePic").resizable().clipped()
                                .frame(maxHeight: 300)
                                .frame(width: gr.size.width).aspectRatio(contentMode: .fit)
                            
                            
                        }
                        
                        
                        VStack(alignment: .leading, spacing: 6) {
                            
                            HStack {
                                Text("Sabrina, 23")
                                    .font(.system(size: 26, weight: .semibold, design: .default))
                                    .foregroundColor(Color(red: 79/255, green: 76/255, blue: 111/255))
                                Spacer()
                                NavigationLink(destination: HomeView().navigationBarTitle("").navigationBarHidden(true)) {
                                    Image(systemName: "arrow.down").resizable().aspectRatio(contentMode: .fit).padding()
                                        .frame(width: gr.size.width*0.12, height: gr.size.width*0.12)
                                        .background(Color(red: 245/255, green: 39/255, blue: 119/255))
                                        .foregroundColor(.white)
                                        .cornerRadius(gr.size.width*0.12)
                                        .font(Font.title.weight(.bold))
                                        
                                }.offset(x: -18, y: -gr.size.height*0.06)
                                
                            }
                           
                            Text("Fashion Designer at Hermes Head quarter")
                                .font(.system(size: 18, weight: .semibold, design: .default))
                                .foregroundColor(Color.gray)
                            
                            Text("18km away")
                                .font(.system(size: 18, weight: .semibold, design: .default))
                                .foregroundColor(Color.gray)
                        }.padding().padding(.top, 0)
                        
                        VStack(alignment: .leading) {
                            Text("ABOUT ME")
                                .font(.system(size: 23, weight: .semibold, design: .default))
                                .foregroundColor(Color(red: 79/255, green: 76/255, blue: 111/255)).padding()
                            
                            Text("Windsurfing in Aruba. Scaling a 90-degree cliff face. Jamming out on the drums with my best friends. No weekend’s complete without a healthy dose of adrenaline… I mean, couldn’t we all use a little extra excitement in our lives?")
                                .font(.system(size: 18, weight: .semibold, design: .default))
                                .foregroundColor(Color.gray)
                                .padding()
                        }
                        
                        
                        VStack(alignment: .leading) {
                            Text("INTERESTS")
                                .font(.system(size: 23, weight: .semibold, design: .default))
                                .foregroundColor(Color(red: 79/255, green: 76/255, blue: 111/255)).padding()
                            
                            HStack {
                                InterestTag(title: "Travel")
                                InterestTag(title: "Coding")
                                InterestTag(title: "Cooking")
                                InterestTag(title: "Binge Drinking")
                                InterestTag(title: "Long Walk")
                                InterestTag(title: "Gym")
                                
                            }.padding()
                            .frame(width: gr.size.width)
                            
                        }.frame(maxWidth: .infinity, alignment: Alignment(horizontal: HorizontalAlignment.leading, vertical: .center))
                        
                        
                    }
                    
                    
                    
                }.edgesIgnoringSafeArea([.top, .bottom])
                
                VStack{
                    Spacer()
                    OptionsBar().frame(height: gr.size.height*0.12)
                }.padding(.bottom, gr.size.height*0.02)
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}

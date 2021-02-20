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
                            VStack {
                                Spacer()
                                NavigationLink(destination: HomeView().navigationBarTitle("").navigationBarHidden(true)) {
                                    Image(systemName: "arrow.left").resizable()
                                        .aspectRatio(contentMode: .fit).foregroundColor(Color(red: 245/255, green: 39/255, blue: 119/255))
                                        .frame(width: 28, height: 28)
                                        .padding()

                                }
                                
                                Spacer()
                                Spacer()
                                Spacer()
                                Spacer()
                                Spacer()
                                Spacer()
                                Spacer()
                                Spacer()
                            }
                            
                            
                        }
                        
                        
                            
                        
                        VStack(alignment: .leading, spacing: 6) {
                            
                            Text("Sabrina, 23")
                                .font(.system(size: 26, weight: .semibold, design: .default))
                                .foregroundColor(Color(red: 79/255, green: 76/255, blue: 111/255))
                            Text("Fashion Designer at Hermes Head quarter")
                                .font(.system(size: 18, weight: .semibold, design: .default))
                                .foregroundColor(Color.gray)
                            
                            Text("18km away")
                                .font(.system(size: 18, weight: .semibold, design: .default))
                                .foregroundColor(Color.gray)
                        }.padding()
                        
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
                                InterestTag(title: "Travel")
                                InterestTag(title: "Travel")
                                
                            }.padding()
                                .frame(width: gr.size.width)
                            
                        }.frame(width: gr.size.width)
                    }
                    
                    
                    
                }.edgesIgnoringSafeArea([.top, .bottom])
                
                

            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}

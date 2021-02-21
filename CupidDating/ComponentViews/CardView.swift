//
//  CardView.swift
//  CupidDating
//
//  Created by Jerry Lai on 2021-02-20.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import SwiftUI

struct CardView: View {
    
    @State private var translation: CGSize = .zero
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                GeometryReader {
                    gr in
                    //NavigationLink(destination: DetailView().navigationBarTitle("".navigationBarHidden(true)) {
                    
                    Image("examplePic").resizable().renderingMode(.original).aspectRatio(contentMode: .fill)
                        .frame(width: gr.size.width*0.9, height: gr.size.height)
                        .cornerRadius(20)
                        .shadow(color: .gray, radius: 6)
                    //}
                    
                    
                }
                
                GeometryReader { gr in
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.white)
                        .opacity(0.5)
                        .frame(height: gr.size.height*0.2)
                        .offset(x: gr.size.width*0.1, y: gr.size.height*0.7)
                    
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Sabrina, 23")
                            .font(.system(size: 28, weight: .semibold, design: .default))
                            .foregroundColor(Color(red: 79/255, green: 76/255, blue: 111/255))
                        Text("Fashion Designer at Hermes Head quarter")
                            .font(.system(size: 18, weight: .semibold, design: .default))
                            .foregroundColor(Color.gray)
                            .frame(width: gr.size.width*0.7)
                        
                    }.padding().frame(width: gr.size.width).offset(y: gr.size.height*0.72)
                }
                
                
            }.offset(x: self.translation.width, y: 0)
                .rotationEffect(.degrees(Double(self.translation.width / geometry.size.width) * 25), anchor: .bottom)
                .gesture(
                    DragGesture()
                        .onChanged({ (value) in
                            self.translation = value.translation
                        }).onEnded({ (value) in
                            self.translation = .zero
                        })
            )

        }
            }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}

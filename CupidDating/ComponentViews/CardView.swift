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
    
    private var user: User
    private var onRemove: (_ user: User) -> Void
    
    private var thresholdPercentage: CGFloat = 0.6
    
    init(user: User, onRemove: @escaping (_ user: User)->Void) {
        self.user = user
        self.onRemove = onRemove
    }
    
    private func getGesturePercentage(_ geometry: GeometryProxy, from gesture: DragGesture.Value) -> CGFloat {
        return gesture.translation.width / geometry.size.width
    }
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                GeometryReader {
                    gr in
                    
                    Image("\(self.user.imageName)").resizable().renderingMode(.original).aspectRatio(contentMode: .fill)
                        .frame(width: gr.size.width*0.9, height: gr.size.height)
                        .cornerRadius(10)
                        .shadow(color: .gray, radius: 6)
                    
                    
                    
                }
                
                GeometryReader { gr in
                    
                    HStack {
                        VStack(alignment: .leading, spacing: 0) {
                            Text("\(self.user.description)")
                                .font(.system(size: 28, weight: .semibold, design: .default))
                                .foregroundColor(.white)
                            
                            HStack {
                                Image(systemName: "briefcase")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: gr.size.width*0.05)
                                    .foregroundColor(.white)
                                    .font(Font.title.weight(.semibold))
                                Text("\(self.user.occupation)")
                                    .font(.system(size: 18, weight: .semibold, design: .default))
                                    .foregroundColor(Color.white)
                            }
                            
                            HStack {
                                Image(systemName: "mappin.and.ellipse")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: gr.size.width*0.05)
                                    .foregroundColor(.white)
                                    .font(Font.title.weight(.semibold))
                                
                                Text("18km away")
                                    .font(.system(size: 18, weight: .semibold, design: .default))
                                    .foregroundColor(Color.white)
                            }
                            
                            
                        }
                        Spacer()
                        
                        NavigationLink(destination: DetailView().navigationBarTitle("").navigationBarHidden(true)) {
                            Image(systemName: "exclamationmark.circle.fill").resizable().aspectRatio(contentMode: .fit).foregroundColor(.white)
                                .frame(width: 30)
                        }
                        
                        
                    }.padding()
                    .padding([.leading, .trailing], gr.size.width*0.08)
                        .offset(y: gr.size.height*0.36)
                    
                }
                
                
            }.offset(x: self.translation.width, y: 0)
                .rotationEffect(.degrees(Double(self.translation.width / geometry.size.width) * 25), anchor: .bottom)
                .gesture(
                    DragGesture()
                        .onChanged({ (value) in
                            self.translation = value.translation
                        }).onEnded({ (value) in
                            
                            if abs(self.getGesturePercentage(geometry, from: value)) > self.thresholdPercentage {
                                self.onRemove(self.user)
                            } else {
                                self.translation = .zero
                            }
                        })
            )

        }
            }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(user: User(id: 1, firstName: "Sabrina", lastName: "", age: 22, imageName: "examplePic", occupation: "Fashion Designer", distance: 22)) { (_) in
            
        }.frame(height: 400)
        .padding()
    }
}

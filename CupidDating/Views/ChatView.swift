//
//  ChatView.swift
//  CupidDating
//
//  Created by Jerry Lai on 2021-02-23.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import SwiftUI

struct ChatView: View {
    
    @State var message = ""
    
    @State var allMessages = [String]()
    
    var body: some View {
        
        GeometryReader {
            gr in
            ZStack {
                
                VStack(spacing: 0) {
                    HStack {
                        NavigationLink(destination: MatchesView().navigationBarTitle("").navigationBarHidden(true)) {
                            
                            Image(systemName: "chevron.left").resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: gr.size.width*0.04)
                                .foregroundColor(Color(red: 245/255, green: 39/255, blue: 119/255))
                                .font(Font.title.bold())
                        }
                        
                        Spacer()
                        VStack {
                            Image("examplePic").resizable().aspectRatio(contentMode: .fill)
                                .clipped()
                                .frame(width: 54, height: 54)
                                .cornerRadius(54)
                            
                            Text("Sabrina")
                                .foregroundColor(.gray)
                                .font(.system(size: 16, weight: .semibold, design: .rounded))
                        }
                        Spacer()
                        Image(systemName: "flag.fill").resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: gr.size.width*0.06)
                            .foregroundColor(Color(red: 245/255, green: 39/255, blue: 119/255))
                            .font(Font.title.bold())
                    }.padding()
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: gr.size.height*0.02) {
                            ReceiveMessageBox()
                            ReceiveMessageBox()
                            SendMessageBox()
                            SendMessageBox()
                            ReceiveMessageBox()
                            SendMessageBox()
                            }.frame(width: gr.size.width)
                    }
                    
                    HStack(spacing: 0) {
                        TextField("Type a message", text: self.$message).textFieldStyle(PlainTextFieldStyle())
                            .padding()
                        .background(Color(red: 248/255, green: 248/255, blue: 248/255))
                        
                        Text("SEND").foregroundColor(.gray)
                            .font(.system(size: 18, weight: .semibold, design: .rounded)).padding()
                        .background(Color(red: 248/255, green: 248/255, blue: 248/255))
                    }.overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.gray, lineWidth: 1))
                        .padding([.leading, .trailing, .top])
                        
                    
                }
                
                
                
            }
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}

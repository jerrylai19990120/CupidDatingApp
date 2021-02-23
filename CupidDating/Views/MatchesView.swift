//
//  MatchesView.swift
//  CupidDating
//
//  Created by Jerry Lai on 2021-02-22.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import SwiftUI

struct MatchesView: View {
    var body: some View {
        GeometryReader { gr in
            VStack {
                
                //nav bar
                HStack {
                    NavigationLink(destination: HomeView().navigationBarTitle("").navigationBarHidden(true)) {
                        Image(systemName:"person.3.fill").resizable().aspectRatio(contentMode: .fit)
                            .foregroundColor(Color(red: 218/255, green: 223/255, blue: 229/255))
                            .frame(width: gr.size.width*0.08)
                    }
                    
                    Spacer()
                    Image(systemName:"bubble.left.and.bubble.right.fill").resizable().aspectRatio(contentMode: .fit)
                        .foregroundColor(Color(red: 245/255, green: 39/255, blue: 119/255))
                        .frame(width: gr.size.width*0.09)
                    Spacer()
                    }.padding()
                .frame(width: gr.size.width)
                
                VStack(alignment: .leading) {
                    Text("NEW MATCHES")
                    .foregroundColor(Color(red: 245/255, green: 39/255, blue: 119/255))
                        .font(.system(size: 16, weight: .bold, design: .rounded))
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            MatchIcon()
                            MatchIcon()
                            MatchIcon()
                            MatchIcon()
                            MatchIcon()
                        }
                    }
                }.padding([.top, .bottom, .leading])
                
                VStack(alignment: .leading, spacing: 0) {
                    Text("MESSAGES")
                    .foregroundColor(Color(red: 245/255, green: 39/255, blue: 119/255))
                        .font(.system(size: 16, weight: .bold, design: .rounded))
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            MessageItem()
                            MessageItem()
                            MessageItem()
                            MessageItem()
                            MessageItem()
                            MessageItem()
                            MessageItem()
                            MessageItem()
                            MessageItem()
                            MessageItem()
                        }
                    }.padding(.top)
                    
                    
                }.padding()
            }.edgesIgnoringSafeArea(.all).padding(.top)
            
        }// geometry reader
    }
}

struct MatchesView_Previews: PreviewProvider {
    static var previews: some View {
        MatchesView()
    }
}

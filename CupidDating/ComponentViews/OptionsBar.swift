//
//  OptionsBar.swift
//  CupidDating
//
//  Created by Jerry Lai on 2021-02-20.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import SwiftUI

struct OptionsBar: View {
    var body: some View {
        GeometryReader {
            gr in
            HStack(alignment: .center) {
                Image(systemName: "arrow.counterclockwise")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .font(Font.title.bold())
                .frame(width: gr.size.width*0.048, height: gr.size.width*0.048)
                .foregroundColor(Color(red: 227/255, green: 183/255, blue: 41/255))
                .padding(.all, gr.size.width*0.038)
                .background(Color.white)
                .cornerRadius(gr.size.width*0.1)
                .shadow(color: .gray, radius: 5, y: 5)
                Spacer()
                Image(systemName: "xmark")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .font(Font.title.bold())
                    .frame(width: gr.size.width*0.06, height: gr.size.width*0.06)
                    .foregroundColor(Color(red: 245/255, green: 39/255, blue: 119/255))
                    .padding(.all, gr.size.width*0.05)
                    .background(Color.white)
                    .cornerRadius(gr.size.width*0.1)
                    .shadow(color: .gray, radius: 5, y: 5)
                Spacer()
                Image(systemName: "star.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: gr.size.width*0.048, height: gr.size.width*0.048)
                    .foregroundColor(Color(red: 61/255, green: 167/255, blue: 244/255))
                    .padding(.all, gr.size.width*0.038)
                    .background(Color.white)
                    .cornerRadius(gr.size.width*0.1)
                    .shadow(color: .gray, radius: 5, y: 5)
                Spacer()
                Image(systemName: "heart.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: gr.size.width*0.06, height: gr.size.width*0.06)
                    .foregroundColor(Color(red: 28/255, green: 222/255, blue: 197/255))
                    .padding(.all, gr.size.width*0.05)
                    .background(Color.white)
                    .cornerRadius(gr.size.width*0.1)
                    .shadow(color: .gray, radius: 5, y: 5)
                Spacer()
                Image(systemName: "bolt.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .font(Font.title.bold())
                .frame(width: gr.size.width*0.048, height: gr.size.width*0.048)
                .foregroundColor(Color(red: 172/255, green: 84/255, blue: 240/255))
                .padding(.all, gr.size.width*0.038)
                .background(Color.white)
                .cornerRadius(gr.size.width*0.1)
                .shadow(color: .gray, radius: 5, y: 5)
            }.padding()
        }
       
    }
}

struct OptionsBar_Previews: PreviewProvider {
    static var previews: some View {
        OptionsBar()
    }
}

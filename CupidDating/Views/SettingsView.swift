//
//  SettingsView.swift
//  CupidDating
//
//  Created by Jerry Lai on 2021-02-24.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        GeometryReader { gr in
            ZStack {
                Color(red: 245/255, green: 245/255, blue: 245/255)
                VStack {
                    HStack(spacing: gr.size.width*0.1) {
                        NavigationLink(destination: ProfileView().navigationBarTitle("").navigationBarHidden(true)) {
                            Image(systemName: "arrow.left").resizable().aspectRatio(contentMode: .fit).foregroundColor(Color(red: 245/255, green: 39/255, blue: 119/255)).frame(width: gr.size.width*0.06)
                        }
                        
                        Text("Settings").foregroundColor(.black).font(.system(size: 23, weight: .semibold, design: .default))
                        Spacer()
                    }.padding().frame(width: gr.size.width).background(Color.white)
                           
                }
            }.edgesIgnoringSafeArea(.bottom)//zstack
        }//geometry reader
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

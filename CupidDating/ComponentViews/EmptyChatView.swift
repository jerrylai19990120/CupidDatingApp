//
//  EmptyChatView.swift
//  CupidDating
//
//  Created by Jerry Lai on 2021-02-23.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import SwiftUI

struct EmptyChatView: View {
    
    @State var name: String = "Sabrina"
    
    var body: some View {
        VStack {
            Spacer()
            Text("You matched with \(name)")
                .font(.system(size: 18, weight: .semibold, design: .default))
            Text("A while ago").foregroundColor(.gray)
                .font(.system(size: 16, weight: .medium, design: .default))
            
            Image("examplePic").resizable().renderingMode(.original).aspectRatio(contentMode: .fill)
            .clipped()
            .frame(width: 100, height: 100)
            .cornerRadius(100)
            
            Text("Shoot your first message to \(name)").foregroundColor(.black).font(.system(size: 18, weight: .medium, design: .default))
            Spacer()
        }.padding()
    }
}

struct EmptyChatView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyChatView()
    }
}

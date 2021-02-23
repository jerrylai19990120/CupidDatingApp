//
//  MatchIcon.swift
//  CupidDating
//
//  Created by Jerry Lai on 2021-02-22.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import SwiftUI

struct MatchIcon: View {
    var body: some View {
        
        NavigationLink(destination: ChatView().navigationBarTitle("").navigationBarHidden(true)) {
            VStack {
                Image("examplePic").resizable().renderingMode(.original).aspectRatio(contentMode: .fill)
                    .clipped()
                    .frame(width: 76, height: 76)
                    .cornerRadius(76)
                Text("Sarbina").foregroundColor(.black)
                    .font(.system(size: 16, weight: .semibold, design: .rounded))
            }
        }
        
    }
}

struct MatchIcon_Previews: PreviewProvider {
    static var previews: some View {
        MatchIcon()
    }
}

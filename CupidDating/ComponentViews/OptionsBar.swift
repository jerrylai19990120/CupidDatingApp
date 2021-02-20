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
        HStack(alignment: .center) {
                               
                               Image(systemName: "xmark")
                                   .resizable()
                                   .aspectRatio(contentMode: .fit)
                                   .frame(width: 30, height: 30)
                                   .foregroundColor(.gray)
                                   .padding(.all, 26)
                                   .background(Color.white)
                                   .cornerRadius(40)
                                   .shadow(color: .gray, radius: 5, y: 5)
                               Spacer()
                               Image(systemName: "star.fill")
                                   .resizable()
                                   .aspectRatio(contentMode: .fit)
                                   .frame(width: 30, height: 30)
                                   .foregroundColor(Color(red: 61/255, green: 167/255, blue: 244/255))
                                   .padding(.all, 26)
                                   .background(Color.white)
                                   .cornerRadius(40)
                                   .shadow(color: .gray, radius: 5, y: 5)
                               Spacer()
                               Image(systemName: "heart.fill")
                                   .resizable()
                                   .aspectRatio(contentMode: .fit)
                                   .frame(width: 30, height: 30)
                                   .foregroundColor(Color(red: 245/255, green: 39/255, blue: 119/255))
                                   .padding(.all, 26)
                                   .background(Color.white)
                                   .cornerRadius(40)
                                   .shadow(color: .gray, radius: 5, y: 5)
                           }.padding()
    }
}

struct OptionsBar_Previews: PreviewProvider {
    static var previews: some View {
        OptionsBar()
    }
}

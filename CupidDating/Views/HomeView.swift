//
//  HomeView.swift
//  CupidDating
//
//  Created by Jerry Lai on 2021-02-20.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            GeometryReader {
                gr in
                ZStack {
                    
                    VStack {
                        HStack(alignment: .center) {
                            Image(systemName: "person.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                                .clipped()
                                .cornerRadius(40)
                                .foregroundColor(Color(red: 245/255, green: 39/255, blue: 119/255))
                            Spacer()
                            Text("For You")
                                .font(.system(size: 23, weight: .semibold, design: .default))
                                .foregroundColor(Color(red: 247/255, green: 85/255, blue: 98/255))
                            Spacer()
                            Image(systemName: "bubble.left.and.bubble.right.fill")
                                .resizable().aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                                .foregroundColor(Color(red: 245/255, green: 39/255, blue: 119/255))
                            
                        }.padding()
                        
                        CardView()
                        
                        OptionsBar()
                        
                    }
                    
                }.navigationBarTitle("").navigationBarHidden(true)
            }
           
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

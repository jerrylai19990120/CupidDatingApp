//
//  EditInfoView.swift
//  CupidDating
//
//  Created by Jerry Lai on 2021-02-24.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import SwiftUI

struct EditInfoView: View {
    
    @State var introBody = ""
    
    @State var didModified: Bool = false
    
    var body: some View {
        GeometryReader {
            gr in
            ZStack {
                Color(red: 245/255, green: 245/255, blue: 245/255)
                VStack{
                    HStack {
                        NavigationLink(destination: ProfileView().navigationBarTitle("").navigationBarHidden(true)) {
                            Image(systemName: "arrow.left").resizable().aspectRatio(contentMode: .fit).foregroundColor(Color(red: 245/255, green: 39/255, blue: 119/255)).frame(width: gr.size.width*0.06)
                        }
                        
                        Spacer()
                        Text("Edit Profile").foregroundColor(.black).font(.system(size: 23, weight: .semibold, design: .default))
                        Spacer()
                        Spacer()
                        Spacer()
                        NavigationLink(destination: ProfileView().navigationBarTitle("").navigationBarHidden(true)) {
                            Text("Done").foregroundColor(Color(red: 245/255, green: 39/255, blue: 119/255)).font(.system(size: 23, weight: .semibold, design: .default))
                        }
                    }.padding().frame(width: gr.size.width).background(Color.white)
                   
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        VStack {
                            PictureGrid(gr: gr).padding()
                            
                            VStack(alignment: .leading) {
                                Text("About John")
                                    .font(.system(size: 18, weight: .semibold, design: .default)).padding(.leading)
                                
                                TextField("About you", text: self.$introBody).padding().frame(width: gr.size.width).background(Color.white)
                            }
                            
                            VStack(alignment: .leading) {
                                Text("Occupation")
                                    .font(.system(size: 18, weight: .semibold, design: .default)).padding(.leading)
                                
                                TextField("Add occupation", text: self.$introBody).padding()
                                .frame(width: gr.size.width).background(Color.white)
                            }.padding(.bottom, gr.size.height*0.1)
                            
                        }
                        
                    }
                    
                }
            }.edgesIgnoringSafeArea(.bottom)
            //zstack
            
            

        }//geometry reader
        
    }
}

struct EditInfoView_Previews: PreviewProvider {
    static var previews: some View {
        EditInfoView()
    }
}

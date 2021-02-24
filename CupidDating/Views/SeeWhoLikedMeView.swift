//
//  SeeWhoLikedMeView.swift
//  CupidDating
//
//  Created by Jerry Lai on 2021-02-23.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import SwiftUI

struct SeeWhoLikedMeView: View {
    
    @State var users: [User] = [
        User(id: 0, firstName: "Sabrina", lastName: "", age: 22, imageName: "examplePic", occupation: "Student at York University", distance: 54),
        User(id: 1, firstName: "Ellin", lastName: "", age: 22, imageName: "examplePic", occupation: "Student at York University", distance: 34),
        User(id: 2, firstName: "Avelin", lastName: "", age: 22, imageName: "examplePic", occupation: "Student at York University", distance: 28),
        User(id: 3, firstName: "Felicia", lastName: "", age: 22, imageName: "examplePic", occupation: "Student at York University", distance: 43),
        User(id: 4, firstName: "Cindy", lastName: "", age: 22, imageName: "examplePic", occupation: "Student at York University", distance: 3),
        User(id: 5, firstName: "Mindy", lastName: "", age: 22, imageName: "examplePic", occupation: "Student at York University", distance: 29),
        User(id: 6, firstName: "Emma", lastName: "", age: 22, imageName: "examplePic", occupation: "Student at York University", distance: 72),
        User(id: 7, firstName: "Prisha", lastName: "", age: 22, imageName: "examplePic", occupation: "Student at York University", distance: 45),
        User(id: 8, firstName: "Aisha", lastName: "", age: 22, imageName: "examplePic", occupation: "Student at York University", distance: 120),
        User(id: 9, firstName: "Jenner", lastName: "", age: 22, imageName: "examplePic", occupation: "Student at York University", distance: 19)
    ]
    
    var body: some View {
        GeometryReader { gr in
            VStack {
                HStack(spacing: 16) {
                    Image(systemName: "heart.fill").resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: gr.size.width*0.08)
                        .foregroundColor(Color(red: 235/255, green: 180/255, blue: 86/255))
                    
                    Text("99+ likes").foregroundColor(.black).font(.system(size: 20, weight: .semibold, design: .rounded))
                    Spacer()
                }.padding().frame(width: gr.size.width)
                Divider()
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 18) {
                        ForEach(0...4, id: \.self){ index in
                            HStack(spacing: 20) {
                                ZStack {
                                    Image("examplePic").resizable().renderingMode(.original).aspectRatio(contentMode: .fill)
                                        .frame(width: gr.size.width*0.4, height: gr.size.height*0.26).clipped().cornerRadius(10)
                                    
                                    GeometryReader { geometry in
                                        VStack(alignment: .leading) {
                                            Spacer()
                                            VStack(alignment: .leading, spacing: 0) {
                                                Text("\(self.users[index].description)")
                                                    .font(.system(size: 16, weight: .semibold, design: .default))
                                                    .foregroundColor(.white)
                                                
                                                
                                                HStack {
                                                    Image(systemName: "mappin.and.ellipse")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .frame(width: geometry.size.width*0.1)
                                                        .foregroundColor(.white)
                                                        .font(Font.title.weight(.semibold))
                                                    
                                                    Text("\(self.users[index].distance)km away")
                                                        .font(.system(size: 16, weight: .semibold, design: .default))
                                                        .foregroundColor(Color.white)
                                                }
                                                
                                            }
                                        }.padding()
                                            .frame(width: geometry.size.width, height: geometry.size.height).offset(x: -geometry.size.width*0.1)
                                        
                                    }
                                    
                                }.frame(width: gr.size.width*0.4, height: gr.size.height*0.26)
                                
                                ZStack {
                                    Image("examplePic").resizable().renderingMode(.original).aspectRatio(contentMode: .fill)
                                        .frame(width: gr.size.width*0.4, height: gr.size.height*0.26).clipped().cornerRadius(10)
                                    
                                    GeometryReader { geometry in
                                        VStack(alignment: .leading) {
                                            Spacer()
                                            VStack(alignment: .leading, spacing: 0) {
                                                Text("\(self.users[index+5].description)")
                                                    .font(.system(size: 16, weight: .semibold, design: .default))
                                                    .foregroundColor(.white)
                                                
                                                
                                                HStack {
                                                    Image(systemName: "mappin.and.ellipse")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .frame(width: geometry.size.width*0.1)
                                                        .foregroundColor(.white)
                                                        .font(Font.title.weight(.semibold))
                                                    
                                                    Text("\(self.users[index+5].distance)km away")
                                                        .font(.system(size: 16, weight: .semibold, design: .default))
                                                        .foregroundColor(Color.white)
                                                }
                                                
                                            }
                                        }.padding()
                                            .frame(width: geometry.size.width, height: geometry.size.height).offset(x: -geometry.size.width*0.1)
                                        
                                    }
                                    
                                }.frame(width: gr.size.width*0.4, height: gr.size.height*0.26)
                            }
                        }
                        
                        
                        
                    }
                }
                
                
                
                Spacer()
            }
            
        }.padding(.bottom).edgesIgnoringSafeArea(.bottom)
       
    }
}

struct SeeWhoLikedMeView_Previews: PreviewProvider {
    static var previews: some View {
        SeeWhoLikedMeView()
    }
}

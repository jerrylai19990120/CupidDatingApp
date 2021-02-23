//
//  HomeView.swift
//  CupidDating
//
//  Created by Jerry Lai on 2021-02-20.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    @State var users: [User] = [
        User(id: 0, firstName: "Sabrina", lastName: "", age: 22, imageName: "examplePic", occupation: "Student at York University"),
        User(id: 1, firstName: "Ellin", lastName: "", age: 22, imageName: "examplePic", occupation: "Student at York University"),
        User(id: 2, firstName: "Avelin", lastName: "", age: 22, imageName: "examplePic", occupation: "Student at York University"),
        User(id: 3, firstName: "Felicia", lastName: "", age: 22, imageName: "examplePic", occupation: "Student at York University"),
        User(id: 4, firstName: "Cindy", lastName: "", age: 22, imageName: "examplePic", occupation: "Student at York University"),
        User(id: 5, firstName: "Mindy", lastName: "", age: 22, imageName: "examplePic", occupation: "Student at York University"),
        User(id: 6, firstName: "Emma", lastName: "", age: 22, imageName: "examplePic", occupation: "Student at York University"),
        User(id: 7, firstName: "Prisha", lastName: "", age: 22, imageName: "examplePic", occupation: "Student at York University"),
        User(id: 8, firstName: "Aisha", lastName: "", age: 22, imageName: "examplePic", occupation: "Student at York University"),
        User(id: 9, firstName: "Jenner", lastName: "", age: 22, imageName: "examplePic", occupation: "Student at York University"),
    ]
    
    private func getCardwidth(_ geometry: GeometryProxy, id: Int) -> CGFloat {
        let offset: CGFloat = CGFloat(users.count - 1 - id) * 10
        return geometry.size.width - offset
    }
    
    private func getCardOffset(_ geometry: GeometryProxy, id: Int) -> CGFloat {
        return CGFloat(users.count-1-id)*10
    }
    
    private var maxID: Int {
        return self.users.map { $0.id }.max() ?? 0
    }
    
    var body: some View {
        NavigationView {
            GeometryReader {
                gr in
                ZStack {
                    
                    VStack {
                        HStack(alignment: .center) {
                            NavigationLink(destination: ProfileView().navigationBarTitle("").navigationBarHidden(true)) {
                                Image(systemName: "person.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                                    .clipped()
                                    .cornerRadius(40)
                                    .foregroundColor(Color(red: 245/255, green: 39/255, blue: 119/255))

                            }
                            
                            Spacer()
                            Text("For You")
                                .font(.system(size: 23, weight: .semibold, design: .default))
                                .foregroundColor(Color(red: 247/255, green: 85/255, blue: 98/255))
                            Spacer()
                            
                            NavigationLink(destination: MatchesView().navigationBarTitle("").navigationBarHidden(true)) {
                                Image(systemName: "bubble.left.and.bubble.right.fill")
                                    .resizable().aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(Color(red: 245/255, green: 39/255, blue: 119/255))
                            }
                            
                            
                        }.padding()
                        
                        ZStack {
                            ForEach(self.users.filter {$0.id > (self.maxID-4)}, id: \.self) { user in
                                
                                
                                CardView(user: user, onRemove: {
                                    removedUser in
                                    self.users.removeAll { $0.id == removedUser.id }
                                }).animation(.interactiveSpring())
                                    .frame(width: self.getCardwidth(gr, id: user.id))
                                    .offset(x: 0, y: self.getCardOffset(gr, id: user.id))
                            }
                        }
                        
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

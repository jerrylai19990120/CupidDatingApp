//
//  CreateAccountView.swift
//  CupidDating
//
//  Created by Jerry Lai on 2021-02-21.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import SwiftUI

struct CreateAccountView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    @State var confirmPassword: String = ""
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var age: String = ""
    @State var occupation: String = ""
    
    var body: some View {
        GeometryReader { gr in
            VStack {
                Image("logoRed").resizable().aspectRatio(contentMode: .fit)
                    .clipped().frame(width: 160)
                Text("Create Account")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                
                VStack {
                    VStack(alignment: .leading, spacing: 6) {
                        Text("Password").foregroundColor(.white)
                            .font(.system(size: 16, weight: .medium, design: .default))
                        SecureField("password", text: self.$password).textFieldStyle(PlainTextFieldStyle())
                            .frame(height: 30)
                            .padding()
                            .cornerRadius(10)
                            .border(Color(red: 245/255, green: 39/255, blue: 119/255))
                            .background(Color.white)
                            
                    }.padding()
                }
            
            }//vstack
        }//geometry reader
    }
}

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView()
    }
}

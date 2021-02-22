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
                VStack {
                    Image("logoRed").resizable().aspectRatio(contentMode: .fit)
                        .clipped().frame(width: 160)
                    Text("Create Account")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                }
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 0) {
                        //email
                        VStack(alignment: .leading, spacing: 6) {
                            Text("Email Address").foregroundColor(.black)
                                .font(.system(size: 16, weight: .medium, design: .default))
                            TextField("email address", text: self.$email).textFieldStyle(PlainTextFieldStyle())
                                .frame(height: 30)
                                .padding()
                                .background(Color.white)
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(red: 245/255, green: 39/255, blue: 119/255), lineWidth: 1)
                                    .background(Color.clear))
                        }.padding()
                        
                        //first name
                        VStack(alignment: .leading, spacing: 6) {
                            Text("First Name").foregroundColor(.black)
                                .font(.system(size: 16, weight: .medium, design: .default))
                            TextField("first name", text: self.$firstName).textFieldStyle(PlainTextFieldStyle())
                                .frame(height: 30)
                                .padding()
                                .background(Color.white)
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(red: 245/255, green: 39/255, blue: 119/255), lineWidth: 1)
                                    .background(Color.clear))
                        }.padding()
                        
                        //last name
                        VStack(alignment: .leading, spacing: 6) {
                            Text("Last Name").foregroundColor(.black)
                                .font(.system(size: 16, weight: .medium, design: .default))
                            TextField("last name", text: self.$lastName).textFieldStyle(PlainTextFieldStyle())
                                .frame(height: 30)
                                .padding()
                                .background(Color.white)
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(red: 245/255, green: 39/255, blue: 119/255), lineWidth: 1)
                                    .background(Color.clear))
                        }.padding()
                        
                        //occupation
                        VStack(alignment: .leading, spacing: 6) {
                            Text("Occupation").foregroundColor(.black)
                                .font(.system(size: 16, weight: .medium, design: .default))
                            TextField("occupation", text: self.$occupation).textFieldStyle(PlainTextFieldStyle())
                                .frame(height: 30)
                                .padding()
                                .background(Color.white)
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(red: 245/255, green: 39/255, blue: 119/255), lineWidth: 1)
                                    .background(Color.clear))
                        }.padding()
                        
                        //age
                        VStack(alignment: .leading, spacing: 6) {
                            Text("Age").foregroundColor(.black)
                                .font(.system(size: 16, weight: .medium, design: .default))
                            TextField("age", text: self.$age).textFieldStyle(PlainTextFieldStyle())
                                .frame(height: 30)
                                .padding()
                                .background(Color.white)
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(red: 245/255, green: 39/255, blue: 119/255), lineWidth: 1)
                                    .background(Color.clear))
                        }.padding()
                        
                        //password
                        VStack(alignment: .leading, spacing: 6) {
                            Text("Password").foregroundColor(.black)
                                .font(.system(size: 16, weight: .medium, design: .default))
                            SecureField("password", text: self.$password).textFieldStyle(PlainTextFieldStyle())
                                .frame(height: 30)
                                .padding()
                                .background(Color.white)
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(red: 245/255, green: 39/255, blue: 119/255), lineWidth: 1)
                                    .background(Color.clear))
                        }.padding()
                        
                        //confirm password
                        VStack(alignment: .leading, spacing: 6) {
                            Text("Confirm Password").foregroundColor(.black)
                                .font(.system(size: 16, weight: .medium, design: .default))
                            SecureField("confirm password", text: self.$confirmPassword).textFieldStyle(PlainTextFieldStyle())
                                .frame(height: 30)
                                .padding()
                                .background(Color.white)
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(red: 245/255, green: 39/255, blue: 119/255), lineWidth: 1)
                                    .background(Color.clear))
                        }.padding()
                        
                        VStack {
                            
                            Button(action: {
                                
                            }) {
                                NavigationLink(destination: HomeView().navigationBarTitle("").navigationBarHidden(true)) {
                                    Text("CREATE ACCOUNT")
                                        .foregroundColor(.white)
                                        .font(.system(size: 18, weight: .semibold, design: .default))
                                        .frame(width: gr.size.width*0.8, height: 60)
                                        .background(Color(red: 245/255, green: 39/255, blue: 119/255))
                                        .cornerRadius(30)

                                }
                                
                            }
                            
                            HStack {
                                Text("Already an user?")
                                    .foregroundColor(Color(red: 245/255, green: 39/255, blue: 119/255))
                                    .font(.system(size: 16, weight: .light, design: .default))
                                NavigationLink(destination: SignInView().navigationBarTitle("").navigationBarHidden(true)) {
                                    Text("Sign In").foregroundColor(Color(red: 245/255, green: 39/255, blue: 119/255))
                                        .font(.system(size: 16, weight: .medium, design: .default))

                                }
                                
                            }.padding()
                            
                        }.padding()
                        Spacer()
                        
                    }
                    

                }//scroll view
                
            
            }//vstack
        }//geometry reader
    }
}

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView()
    }
}

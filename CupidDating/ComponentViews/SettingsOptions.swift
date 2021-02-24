//
//  SettingsOptions.swift
//  CupidDating
//
//  Created by Jerry Lai on 2021-02-24.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import SwiftUI

struct SettingsOptions: View {
    
    var gr: GeometryProxy
    
    @State var isOn: Bool = true
    
    @State var isOnCupid: Bool = true
    
    @State var distanceRange:Double = 20
    
    @State var maxAgeRange:Double = 40
    
    @State var minAgeRange: Double = 18
    
    var body: some View {
        
        List {
            
            Section(header: SectionHeader(header: "DISCOVERY SETTINGS")) {
                HStack {
                    Text("My Location")
                        .font(.system(size: 20, weight: .regular, design: .default))
                    Spacer()
                    VStack(spacing: 2) {
                        Text("My Current Location")
                        .font(.system(size: 20, weight: .regular, design: .default))
                            .foregroundColor(Color(red: 108/255, green: 108/255, blue: 108/255))
                        
                        Text("Toronto, ON")
                        .font(.system(size: 20, weight: .regular, design: .default))
                            .foregroundColor(.gray)
                    }
                }
                
                VStack {
                    HStack {
                        Text("Maximum Distance")
                            .font(.system(size: 20, weight: .regular, design: .default))
                        Spacer()
                        Text("\(Int(self.distanceRange))km")
                            .font(.system(size: 20, weight: .regular, design: .default)).foregroundColor(.gray)

                        
                    }
                    
                    Slider(value: $distanceRange, in: 0...80).accentColor(Color(red: 245/255, green: 39/255, blue: 119/255))
                }
                
                VStack {
                    HStack {
                        Text("Age Range")
                            .font(.system(size: 20, weight: .regular, design: .default))
                        Spacer()
                        Text("\(Int(self.minAgeRange))-\(Int(self.maxAgeRange))")
                            .font(.system(size: 20, weight: .regular, design: .default)).foregroundColor(.gray)

                        
                    }
                    
                    HStack {
                        Text("Min")
                        .font(.system(size: 20, weight: .regular, design: .default)).foregroundColor(.gray)
                        Slider(value: $minAgeRange, in: 18...38).accentColor(Color(red: 245/255, green: 39/255, blue: 119/255))
                    }
                    
                    HStack {
                        Text("Max")
                        .font(.system(size: 20, weight: .regular, design: .default)).foregroundColor(.gray)
                        Slider(value: $maxAgeRange, in: 39...60).accentColor(Color(red: 245/255, green: 39/255, blue: 119/255))
                    }
                    
                    
                }
               
                
            }
            
            Section(header: Text("Show Me:").font(.system(size: 13, weight: .semibold, design: .default))) {
                Toggle(isOn: self.$isOn) {
                    Text("Men")
                    .font(.system(size: 20, weight: .regular, design: .default))
                    }.toggleStyle(RedToggleStyle(title: "Men"))
                .padding([.top, .bottom])
                
                Toggle(isOn: self.$isOn) {
                    Text("Women")
                    .font(.system(size: 20, weight: .regular, design: .default))
                    }.padding([.top, .bottom]).toggleStyle(RedToggleStyle(title: "Women"))
            }
            
            Section(header: Text("")) {
                Toggle(isOn: self.$isOnCupid) {
                    Text("Show me on Cupid")
                    .font(.system(size: 20, weight: .regular, design: .default))
                    }.padding([.top, .bottom]).toggleStyle(RedToggleStyle(title: "Show me on Cupid"))
            }
            
            
            Section(header: Text("")) {
                HStack {
                    Spacer()
                    Text("Help & Support")
                        .font(.system(size: 20, weight: .regular, design: .default)).padding()
                    Spacer()
                }

            }
            
            
            Section(header: Text("")) {
                HStack {
                    Spacer()
                    Text("Share Cupid")
                        .font(.system(size: 20, weight: .regular, design: .default)).padding()
                    Spacer()
                }
                

            }
            
            

            Section(header: Text("LEGAL").font(.system(size: 13, weight: .semibold, design: .default))) {
                NavigationLink(destination: HomeView()) {
                    Text("Privacy Policy")
                        .font(.system(size: 18, weight: .regular, design: .default))
                    }.padding([.top, .bottom])
                
                NavigationLink(destination: HomeView()) {
                    Text("Terms of Service")
                        .font(.system(size: 18, weight: .regular, design: .default))
                }.padding([.top, .bottom])

                NavigationLink(destination: HomeView()) {
                    Text("Licenses")
                        .font(.system(size: 18, weight: .regular, design: .default))
                }.padding([.top, .bottom])


            }
            
            Section(header: Text("")) {
                HStack {
                    Spacer()
                    Text("Logout")
                        .font(.system(size: 20, weight: .regular, design: .default)).padding()
                    Spacer()
                }
            }
            
            
            
        }.listStyle(GroupedListStyle())

    }
}

struct SettingsOptions_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { gr in
            SettingsOptions(gr: gr)
        }
    }
}

struct SectionHeader: View {
    
    var header: String
    
    var body: some View {
        Text("\(header)").foregroundColor(Color(red: 245/255, green: 39/255, blue: 119/255))
            .font(.system(size: 13, weight: .semibold, design: .default))
    }
}

struct RedToggleStyle: ToggleStyle {
    
    var title: String = ""
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Text("\(title)")
            .font(.system(size: 20, weight: .regular, design: .default))
            Spacer()
            Rectangle()
                .foregroundColor(configuration.isOn ? Color(red: 245/255, green: 39/255, blue: 119/255) : .gray)
                .frame(width: 54, height: 30, alignment: .center)
                .overlay(
                    Circle()
                        .foregroundColor(.white)
                        .offset(x: configuration.isOn ? 12 : -12, y: 0)
                        .shadow(color: .gray, radius: 6)
                        .animation(Animation.linear(duration: 0.1))
                        
                ).cornerRadius(18)
                .onTapGesture { configuration.isOn.toggle() }
        }
    }
}

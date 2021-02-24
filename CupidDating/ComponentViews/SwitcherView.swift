//
//  SwitcherView.swift
//  CupidDating
//
//  Created by Jerry Lai on 2021-02-23.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import SwiftUI

struct SwitcherView: View {
    
    @Binding var isOn: Bool
    
    var body: some View {
        Toggle(isOn: $isOn) {
            Text("Active")
            }.toggleStyle(CustomToggleStyle())
        .labelsHidden()
    }
}

struct CustomToggleStyle: ToggleStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Rectangle()
                .foregroundColor(configuration.isOn ? Color(red: 245/255, green: 39/255, blue: 119/255) : Color(red: 240/255, green: 204/255, blue: 117/255))
                .frame(width: 66, height: 36, alignment: .center)
                .overlay(
                    Circle()
                        .shadow(color: .gray, radius: 3)
                        .foregroundColor(.white)
                        .overlay(
                            configuration.isOn ? AnyView(Image(systemName: "person.3.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(Color(red: 240/255, green: 204/255, blue: 117/255))
                                .frame(width: 14, height: 14, alignment: .center)) : AnyView(Image("logoToggle")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 14, height: 14, alignment: .center))
                            
                        
                            
                        )
                        .offset(x: configuration.isOn ? 16 : -16, y: 0)
                        .animation(Animation.linear(duration: 0.1))
                        
                ).cornerRadius(18)
                .onTapGesture { configuration.isOn.toggle() }
        }
    }
}

struct SwitcherView_Previews: PreviewProvider {
    static var previews: some View {
        SwitcherView(isOn: Binding.constant(false))
    }
}

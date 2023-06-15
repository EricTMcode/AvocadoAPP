//
//  SettingsView.swift
//  Avocado
//
//  Created by Eric on 13/06/2023.
//

import SwiftUI

struct SettingsView: View {
    @State private var enableNotification = true
    @State private var backgroundRefresh = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: .ColorBlackTransparentLight, radius: 8, x: 0, y: 4)
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .bold()
                    .foregroundColor(.ColorGreenAdaptive)
            }
            .padding()
            
            Form {
                Section("General Settings") {
                    Toggle(isOn: $enableNotification) {
                        Text("Enable notification")
                    }
                    
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background refresh")
                    }
                }
                
                Section("Application") {
                    if enableNotification {
                        RowAppInfoView(itemOne: "Product", itemTwo: "Avocado Recipes")
                        RowAppInfoView(itemOne: "Compatibility", itemTwo: "iPhone & Ipad")
                        RowAppInfoView(itemOne: "Developer", itemTwo: "John / Jane")
                        RowAppInfoView(itemOne: "Designer", itemTwo: "Robert Petras")
                        RowAppInfoView(itemOne: "Website", itemTwo: "swiftuimasterclass.com")
                        RowAppInfoView(itemOne: "Version", itemTwo: "1.0")
                    } else {
                        RowAppInfoView(itemOne: "Personal message", itemTwo: "Happy Coding 👍")
                    }
                }
            }
        }
        .frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}


struct RowAppInfoView: View {
    var itemOne: String
    var itemTwo: String
    
    var body: some View {
        HStack {
            Text(itemOne)
                .foregroundColor(.gray)
            Spacer()
            Text(itemTwo)
        }
    }
}

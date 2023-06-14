//
//  RecipesView.swift
//  Avocado
//
//  Created by Eric on 13/06/2023.
//

import SwiftUI

struct RecipesView: View {
    var headers: [Header] = headersData
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                    }
                }
                Text("Avocado Dishes")
                    .bold()
                    .modifier(TitleModifier())
                
                DishesView()
                    .frame(maxWidth: 640)
                
                VStack(alignment: .center, spacing: 20) {
                    Text("All About Avocados")
                        .bold()
                        .modifier(TitleModifier())
                    Text("Everything you wanted to know about avocados but were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                        .frame(minHeight: 60)
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom,85)
            }
        }
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundColor(.ColorGreenAdaptive)
            .padding(8)
    }
}

struct RecipesView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesView(headers: headersData)
    }
}
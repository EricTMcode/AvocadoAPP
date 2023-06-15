//
//  RecipeCookingView.swift
//  Avocado
//
//  Created by Eric on 15/06/2023.
//

import SwiftUI

struct RecipeCookingView: View {
    var recipe: Recipe
    
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            Cooking(image: "person.2", text: "Serves: \(recipe.serves)")
            Cooking(image: "clock", text: "Prep: \(recipe.preparation)")
            Cooking(image: "flame", text: "Cooking: \(recipe.cooking)")
        }
        .font(.footnote)
        .foregroundColor(.gray)
    }
}

struct RecipeCookingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCookingView(recipe: recipesData[0])
            .previewLayout(.fixed(width: 320, height: 60))
    }
}

struct Cooking: View {
    let image: String
    let text: String
    
    var body: some View {
        HStack(alignment: .center, spacing: 2) {
            Image(systemName: image)
            Text(text)
        }
    }
}

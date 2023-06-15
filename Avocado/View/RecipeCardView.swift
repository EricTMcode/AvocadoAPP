//
//  RecipeCardView.swift
//  Avocado
//
//  Created by Eric on 14/06/2023.
//

import SwiftUI

struct RecipeCardView: View {
    var recipe: Recipe
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModal = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                                .font(Font.title.weight(.light))
                                .foregroundColor(.white)
                                .imageScale(.small)
                                .shadow(color: Color.ColorBlackTransparentLight, radius: 2, x: 0, y: 0)
                                .padding(.trailing, 20)
                                .padding(.top, 22)
                            Spacer()
                        }
                    }
                )
            
            VStack(alignment: .leading, spacing: 12) {
                // TITLE
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .bold()
                    .foregroundColor(Color.ColorGreenMedium)
                    .lineLimit(1)
                
                // HEADLINE
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(.gray)
                    .italic()
                
                // RATING
                RecipeRatingView(recipe: recipe)
                
                // COOKING
                RecipeCookingView(recipe: recipe)
            }
            .padding()
            .padding(.bottom, 12)
        }
        .background(.white)
        .cornerRadius(12)
        .shadow(color: Color.ColorBlackTransparentLight, radius: 8, x: 0, y: 0)
        .onTapGesture {
            hapticImpact.impactOccurred()
            showModal = true
        }
        .sheet(isPresented: $showModal) {
            RecipeDetailView(recipe: recipe)
        }
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

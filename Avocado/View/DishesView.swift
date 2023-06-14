//
//  DishesView.swift
//  Avocado
//
//  Created by Eric on 13/06/2023.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            ColumnLeft()
            
            ColumnCenter()
            
            ColumnRight()
            
        }
        .font(.system(.callout, design: .serif))
        .foregroundColor(.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}


struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView()
            .previewLayout(.fixed(width: 414, height: 280))
    }
}

struct ColumnLeft: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            IconView(image: "icon-toasts", text: "Toasts", state: .left)
            Divider()
            IconView(image: "icon-tacos", text: "Tacos", state: .left)
            Divider()
            IconView(image: "icon-salads", text: "Salads", state: .left)
            Divider()
            IconView(image: "icon-halfavo", text: "Spreads", state: .left)
            
        }
    }
}

struct ColumnRight: View {
    var body: some View {
        VStack(alignment: .trailing, spacing: 4) {
            IconView(image: "icon-guacamole", text: "Guacamole", state: .right)
            Divider()
            IconView(image: "icon-sandwiches", text: "Sandwich", state: .right)
            Divider()
            IconView(image: "icon-soup", text: "Soup", state: .right)
            Divider()
            IconView(image: "icon-smoothies", text: "Smoothies", state: .right)
        }
    }
}

struct ColumnCenter: View {
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            HStack {
                Divider()
            }
            Image(systemName: "heart.circle")
                .font(Font.title.weight(.ultraLight))
                .imageScale(.large)
            HStack {
                Divider()
            }
        }
    }
}

struct IconView: View {
    let image: String
    let text: String
    let state: State
    
    enum State {
        case left
        case right
    }
    
    var body: some View {
        if state == .left {
            ImageLeft(image: image, text: text)
        } else {
            ImageRight(image: image, text: text)
        }
    }
}


struct ImageLeft: View {
    let image: String
    let text: String
    
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .modifier(IconModifier())
            Spacer()
            Text(text)
        }
    }
}

struct ImageRight: View {
    let image: String
    let text: String
    
    var body: some View {
        HStack {
            Text(text)
            Spacer()
            Image(image)
                .resizable()
                .modifier(IconModifier())
        }
    }
}

struct IconModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 42, height: 42, alignment: .center)
    }
}

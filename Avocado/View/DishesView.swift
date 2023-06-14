//
//  DishesView.swift
//  Avocado
//
//  Created by Eric on 13/06/2023.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack {
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
            HStack {
                Image(image)
                    .resizable()
                    .frame(width: 42, height: 42, alignment: .center)
                Spacer()
                Text(text)
            }
        } else {
            HStack {
                Text(text)
                Spacer()
                Image(image)
                    .resizable()
                    .frame(width: 42, height: 42, alignment: .center)
            }
        }
    }
}

struct ColumnLeft: View {
    var body: some View {
        VStack {
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
        VStack {
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
        VStack {
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

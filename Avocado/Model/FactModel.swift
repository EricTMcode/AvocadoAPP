//
//  FactModel.swift
//  Avocado
//
//  Created by Eric on 14/06/2023.
//

import SwiftUI

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}

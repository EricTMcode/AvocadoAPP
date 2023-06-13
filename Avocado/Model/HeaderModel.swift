//
//  HeaderModel.swift
//  Avocado
//
//  Created by Eric on 13/06/2023.
//

import SwiftUI

// MARK: - HEADER

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}

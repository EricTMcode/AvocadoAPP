//
//  RipeningModel.swift
//  Avocado
//
//  Created by Eric on 15/06/2023.
//

import SwiftUI

struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}

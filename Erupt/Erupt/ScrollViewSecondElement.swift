//
//  ScrollViewSecondElement.swift
//  Erupt
//
//  Created by Mert Köksal on 6.10.2020.
//

import SwiftUI

struct ScrollViewSecondElement: Identifiable {
    var id : Int {
        return card_id
    }
    var card_id: Int
    var price: String
    var image: String
    var title: String
    var explanation: String
}

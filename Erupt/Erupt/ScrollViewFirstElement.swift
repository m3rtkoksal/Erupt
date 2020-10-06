//
//  ScrollViewFirst.swift
//  Erupt
//
//  Created by Mert Köksal on 6.10.2020.
//

import SwiftUI

struct ScrollViewFirstElement: Identifiable {
    var id : Int {
        return card_id
    }
    var card_id: Int
    var price: String
    var discountPrice: String
    var image: String
    var circleColor: Color
    var roundedColor: Color
}
   

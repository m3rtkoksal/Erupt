//
//  Service.swift
//  Erupt
//
//  Created by Mert Köksal on 6.10.2020.
//

import SwiftUI

struct Service {
    static let listData: [ScrollViewFirstElement] = [
        ScrollViewFirstElement(card_id: 0, price: "$400", discountPrice: "$250", image: "beats", circleColor: .yellow, roundedColor: .red),
        ScrollViewFirstElement(card_id: 1, price: "$280", discountPrice: "$125", image: "airpods", circleColor: .orange, roundedColor: .green),
        ScrollViewFirstElement(card_id: 2, price: "$400", discountPrice: "$200", image: "watch", circleColor: .blue, roundedColor: .black),
        ScrollViewFirstElement(card_id: 3, price: "$1000", discountPrice: "$500", image: "mop", circleColor: .gray, roundedColor: .pink)
    ]
    
    static let listDataSecond: [ScrollViewSecondElement] = [
        ScrollViewSecondElement(card_id: 0, price: "$600", image: "iphone", title: "Iphone X", explanation: "64GB"),
        ScrollViewSecondElement(card_id: 1, price: "$500", image: "xbox", title: "X Box", explanation: "500GB"),
        ScrollViewSecondElement(card_id: 2, price: "$2000", image: "macmini", title: "Mac Mini", explanation: "512GB SSD")
    ]
}

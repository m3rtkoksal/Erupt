//
//  CardView.swift
//  Erupt
//
//  Created by Mert Köksal on 6.10.2020.
//

import SwiftUI

struct CardViewOne: View {
    var item: ScrollViewFirstElement
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 80, height: 80)
                VStack(alignment: .leading) {
                    Text(item.discountPrice)
                        .foregroundColor(.white)
                        .font(.body)
                        .fontWeight(.bold)
                    Text(item.price)
                        .foregroundColor(.yellow)
                        .font(.caption)
                }
                .offset(x: -10, y: -10)
            
            Image(item.image)
                .resizable()
                .frame(width: 80, height: 80)
                .offset(x: 40, y: 50)
                .shadow(radius: 15 )
                .mask(RoundedRectangle(cornerRadius: 15)
                            .frame(width: 80, height: 80)
                            .offset(x: 40, y: 50)
                            .foregroundColor(.white)
                            .shadow(radius: 15 ))
                .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 15, height: 15)
                .foregroundColor(item.circleColor)
                .offset(x: -10, y: 60)
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 15, height: 15)
                .foregroundColor(item.roundedColor)
                .offset(x: 60, y: 5)
               
        }
    }
    
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardViewOne(item:  ScrollViewFirstElement(card_id: 0, price: "$400", discountPrice: "$250", image: "beats", circleColor: .yellow, roundedColor: .red))
    }
}

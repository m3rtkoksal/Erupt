//
//  CardViewTwo.swift
//  Erupt
//
//  Created by Mert Köksal on 6.10.2020.
//

import SwiftUI

struct CardViewTwo: View {
    var itemSecond: ScrollViewSecondElement
    var width = UIScreen.main.bounds.width
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .frame(width: width - 70 , height: 120)
                .foregroundColor(.black)
            HStack {
                Image(itemSecond.image)
                    .resizable()
                    .frame(width: 100, height: 100)
                VStack(alignment: .leading) {
                    Text(itemSecond.title)
                        .foregroundColor(.white)
                        .font(.body)
                        .fontWeight(.bold)
                    Spacer()
                    Text(itemSecond.explanation)
                        .foregroundColor(.white)
                        .font(.caption2)
                        .fontWeight(.light)
                    Spacer()
                    Text(itemSecond.price)
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
                .frame( height: 110, alignment: .leading)
                .padding()
                VStack(alignment: .trailing) {
                    HStack {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    }
                    .frame(width: 5, height: 10)
                    .padding()
                    Spacer()
                    Button(action: {
                        print("Next button tapped!")
                    }) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 30, height: 30, alignment: .center)
                                .foregroundColor(.red)
                            Image(systemName: "arrow.right")
                                .foregroundColor(.white)
                        }
                    }
                }
                .frame(height: 110, alignment: .trailing)
                .padding()
                .offset(y: -10)
            }
        }
    }
}

struct CardViewTwo_Previews: PreviewProvider {
    static var previews: some View {
        CardViewTwo(itemSecond: ScrollViewSecondElement(card_id: 0, price: "$500", image: "iphone", title: "Iphone X", explanation: "128GB"))
    }
}

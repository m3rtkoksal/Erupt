//
//  ContentView.swift
//  Erupt
//
//  Created by Mert Köksal on 6.10.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.black).edgesIgnoringSafeArea(.all)
            VStack(spacing: 0) {
                NavigationBar()
                ZStack {
                    Image("erupt")
                        .resizable()
                    //                    .aspectRatio(contentMode: .fit)
                    HStack {
                        VStack(alignment: .leading) {
                            Text("COLLECTION 2020")
                                .font(.body)
                                .fontWeight(.bold)
                                .foregroundColor(Color.yellow)
                            Text("Erupt Gadgets")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                            Text("Technical features including industry.")
                                .font(.caption)
                                .foregroundColor(Color.white)
                        }
                        .padding()
                        Spacer()
                    }
                }
                ZStack(alignment: .topTrailing) {
                    VStack {
                        HStack {
                            Text("Popular")
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                            Spacer()
                            Text("01/20")
                                .font(.caption)
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                        }
                        .padding(.top,25)
                        
                        ScrollViewOne()
                        Spacer()
                        HStack {
                            Text("Best Selling")
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                            Spacer()
                            Text("01/06")
                                .font(.caption)
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                        }
                        ScrollViewTwo()
                    }
                    .padding(.bottom,40)
                    .padding(.horizontal)
                    .background((Color.white))
                    .clipShape(Corners())
                }
                .zIndex(40)
                .offset(y: -40)
                .padding(.bottom, -40)
            }
            .edgesIgnoringSafeArea(.top)
            .animation(.default)
        }
    }
}

struct NavigationBar: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "equal")
                    .foregroundColor(.white)
                Spacer()
                Text("Erupt")
                    .foregroundColor(.yellow)
                    .font(.title)
                    .fontWeight(.bold)
                Text(".")
                    .foregroundColor(.red)
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
                Image(systemName:"magnifyingglass")
                    .foregroundColor(.white)
            }
            .background(Color(.black))
            .padding()
        }
        .offset(y: 15)
    }
}

struct ScrollViewOne: View {
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 60) {
                ForEach(Service.listData, id: \.card_id) { item in
                    CardViewOne(item: item)
                }
            }
            .frame(height: 190)
        }
    }
}

struct ScrollViewTwo: View {
    
    var body: some View {
        
        ScrollView(.horizontal) {
            HStack(spacing: 10) {
                ForEach(Service.listDataSecond, id: \.card_id) { item in
                    CardViewTwo(itemSecond: item)
                }
                .frame(height: 150)
            }
        }
    }
}

struct CustomShape : Shape {
    func path(in rect: CGRect) -> Path {
        return Path { path in
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height-40))
            
        }
    }
}

struct Corners : Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

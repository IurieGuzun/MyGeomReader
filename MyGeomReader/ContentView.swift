//
//  ContentView.swift
//  MyGeomReader
//
//  Created by Iurie Guzun on 2021-01-22.
//  Copyright © 2021 Iurie Guzun. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            Image("Swift")
            Spacer()
            ZStack{
                HStack {
                    Text("Hello,    World!")
                    Spacer()
                    Text("Good Buy,    Iurie!")
                }.padding()
                GeometryReader { geo in
                    HStack {
                    Text("Ok")
                        .frame(width: geo.size.width / 4, height: geo.size.height / 2)
                        .background(Color.yellow)
                    
                    Text("")
                        .frame(width: geo.size.width / 4, height: geo.size.height / 2)
                       .background(Color.gray)
                    }
                }
            }
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

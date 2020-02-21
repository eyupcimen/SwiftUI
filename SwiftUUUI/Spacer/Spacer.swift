//
//  Spacer.swift
//  SwiftUUUI
//
//  Created by eyup cimen on 21.02.2020.
//  Copyright © 2020 eyup cimen. All rights reserved.
//

import Foundation
import SwiftUI

struct TopView : View {
    var body : some View {
        HStack (alignment: .top){
            
            VStack{
                Text("SwiftUI")
                Text("Layout")
            }
            Spacer()
            Image("icon")
        }.padding()
    }
}


struct ContentView : View {
    var body: some View {
        ZStack ( alignment: .bottomTrailing){
            VStack {
                TopView()
                Spacer()
            }
            Text("A ZStack Layer")
        }.padding()
    }
}


struct Spacer_Previews : PreviewProvider {
    static var previews : some View {
        ContentView()
    }
}

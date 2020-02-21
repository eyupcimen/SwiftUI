//
//  AnimalList.swift
//  SwiftUUUI
//
//  Created by eyup cimen on 21.02.2020.
//  Copyright © 2020 eyup cimen. All rights reserved.
//

import SwiftUI

struct AnimalList : View {
    
    let animals : [String]
    
    var body : some View {
        NavigationView {
            
            List {
                ForEach(0..<animals.count) { number in
                    AnimalCell(iconName: "icon")
                }
            }
        }
    }
}

#if DEBUG
public struct AnimalList_Previews: PreviewProvider {
    
    public static var previews: some View {
        AnimalList(animals: ["A" , "B" , "C"] )
    }
}
#endif

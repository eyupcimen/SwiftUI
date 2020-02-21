//
//  ContentView.swift
//  SwiftUUUI
//
//  Created by eyup cimen on 20.02.2020.
//  Copyright © 2020 eyup cimen. All rights reserved.
//

import SwiftUI

struct AnimalCell: View {
    
    let iconName : String
    
    var body: some View {
        
        HStack(alignment: .center) {
            
            GeneralImage(imageName: iconName)
            
            VStack{
                Text("Hello, World! light")
                    .font(.title)
                    .fontWeight(.light)
                Text("Hello, largeTitle")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("Hello World Greenn").font(.largeTitle).fontWeight(.ultraLight).foregroundColor(Color.green).multilineTextAlignment(.trailing).padding(.all, 35.0).frame(width: nil).lineLimit(0)
            }
        }.fixedSize()
    }
}



#if DEBUG
public struct ContentView_Previews: PreviewProvider {
    
    public static var previews: some View {
        ForEach(0 ..< 1) { item in
            Group{
                AnimalCell(iconName: "icon")
                    .previewLayout(.sizeThatFits)
                    .environment(\.sizeCategory , .medium)
                    .previewDisplayName("\(item)")
            }
        }
    }
}
#endif
 

struct GeneralImage: View {
    let imageName : String
    
    var body: some View {
        
        Image(imageName)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(Color.white, lineWidth: 2)
        )
            .padding(2)
            .overlay(
                Circle()
                    .strokeBorder(Color.black.opacity(0.1))
        )
            .shadow(radius: 3)
            .padding(4)
    }
}

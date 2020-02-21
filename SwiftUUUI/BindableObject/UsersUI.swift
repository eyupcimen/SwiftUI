//
//  BindableObjectUI.swift
//  SwiftUUUI
//
//  Created by eyup cimen on 21.02.2020.
//  Copyright © 2020 eyup cimen. All rights reserved.
//

import SwiftUI
import Combine
import Foundation

class UserSettings : ObservableObject {
    
    @Published var change = PassthroughSubject<Void,Never>()
    var score : Int = 0 {
        didSet {
            change.send()
        }
    }
}



struct UsersUI : View {
    
    @ObservedObject var settings = UserSettings()
    
    var body: some View {
        
        VStack{
            Text("\(self.settings.score)")
            Button("Increment Score" ,action: {
                self.settings.score += 1
            })
        }
        
    }
}



#if DEBUG
public struct UsersUI_Previews: PreviewProvider {
    
    public static var previews: some View {
         UsersUI()
    }
}
#endif
  

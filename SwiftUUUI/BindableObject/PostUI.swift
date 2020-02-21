//
//  PostUI.swift
//  SwiftUUUI
//
//  Created by eyup cimen on 21.02.2020.
//  Copyright © 2020 eyup cimen. All rights reserved.
//

import Foundation
import SwiftUI

struct PostUIContentView : View {
    
    @ObservedObject private var postListVM = PostListViewModel()
    
    var body : some View {
        
        List(self.postListVM.posts , id: \.id ){ post in
            VStack(alignment: .leading){
                Text(post.title).font(.largeTitle)
                Text(post.body)
            }
        }
        
    }
}


struct PostUI_Previews : PreviewProvider {
    static var previews : some View {
        PostUIContentView()
    }
}

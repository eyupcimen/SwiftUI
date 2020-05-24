//
//  PostListViewModel.swift
//  SwiftUUUI
//
//  Created by eyup cimen on 21.02.2020.
//  Copyright © 2020 eyup cimen. All rights reserved.
//

import Foundation

class PostListViewModel : ObservableObject {
    
    @Published var posts = [PostViewModel]()
    
    init() {
        Webservice().getPosts { posts in
            if let posts = posts {
                self.posts = posts.map(PostViewModel.init)
            }
        }
    }
}

struct PostViewModel {
    var post : Post
    
    init(post:Post) {
        self.post = post
    }
    
    var id : Int {
        return self.post.id
    }
    
    var title :String {
        return self.post.title
    }
    
    var body : String {
        return self.post.body
    }
}

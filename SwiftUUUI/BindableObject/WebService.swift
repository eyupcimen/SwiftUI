//
//  WebService.swift
//  SwiftUUUI
//
//  Created by eyup cimen on 21.02.2020.
//  Copyright © 2020 eyup cimen. All rights reserved.
//

import Foundation

class Webservice {
    
    func getPosts( _ completion : @escaping ([Post]?) -> () ) {
            
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            fatalError("Invalid Url")
        }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard let data = data , error == nil else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            let posts = try? JSONDecoder().decode([Post].self, from: data)
            
            DispatchQueue.main.async {
                completion(posts)
            }
            
        }.resume()
        
        
    }
}

//
//  Post.swift
//  SwiftUUUI
//
//  Created by eyup cimen on 21.02.2020.
//  Copyright © 2020 eyup cimen. All rights reserved.
//

import Foundation

struct Post : Codable {
    let userId : Int
    let id : Int
    let title :String
    let body : String
}

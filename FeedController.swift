//
//  FeedController.swift
//  singletonTest
//
//  Created by Paulo Silva on 11/02/2021.
//

import Foundation

class FeedController {
    // every module should just call a function but right now they have to find the singleton first
    var api = ThirdSingletonClass.shared
    api.loadFeed() { loadedItems in // we need this new method and a new struct
        // update UI
    }
}

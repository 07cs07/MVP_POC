//
//  Model.swift
//  MVPpoc
//
//  Created by Mahalingam, Balachander on 02/04/19.
//  Copyright © 2019 Mahalingam, Balachander. All rights reserved.
//

import Foundation

struct Model<T> {
    private var items = [T]()
    
    mutating func addItem(_ item: T) {
        items.insert(item, at: 0)
    }
    
    mutating func remoteItem(at index: Int) {
        guard items.indices.contains(index) else {
            return
        }
        items.remove(at: index)
    }

    func count() -> Int {
        return items.count
    }
    
    subscript(index: Int) -> T? {
        return items.indices.contains(index) ? items[index] : nil
    }
}

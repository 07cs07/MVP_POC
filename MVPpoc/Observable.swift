//
//  Observable.swift
//  MVPpoc
//
//  Created by Mahalingam, Balachander on 02/04/19.
//  Copyright © 2019 Mahalingam, Balachander. All rights reserved.
//

import Foundation

class Observable<T> {
    var bind: (T) -> () = {_ in }
    
    var value: T {
        didSet {
            bind(value)
        }
    }
    
    init(_ value: T) {
        self.value = value
    }
}

//
//  Presenter.swift
//  MVPpoc
//
//  Created by Mahalingam, Balachander on 02/04/19.
//  Copyright © 2019 Mahalingam, Balachander. All rights reserved.
//

import Foundation


class Presenter {
   
    private var model = Model<Date>()
    
    func addDate() {
        model.addItem(Date())
    }
    
    func removeDate(at index: Int) {
        model.remoteItem(at: index)
    }
    
    func count() -> Int {
        return model.count()
    }
    
    subscript(index: Int) -> String? {
        guard let date = model[index] else {
            return nil
        }
        return date.description
    }
    
}

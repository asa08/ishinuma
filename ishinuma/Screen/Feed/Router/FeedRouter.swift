//
//  FeedRouter.swift
//  ishinuma
//
//  Created by maiko morisaki on 2021/10/02.
//

import Foundation

protocol FeedWireframe {
    func transitDetail()
}

class FeedRouter: FeedWireframe {
    weak var viewController: FeedViewController?
    
    init(viewController: FeedViewController) {
        self.viewController = viewController
    }
    
    func transitDetail() {
        
    }
}

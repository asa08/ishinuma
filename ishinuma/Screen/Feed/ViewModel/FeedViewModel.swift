//
//  FeedViewModel.swift
//  ishinuma
//
//  Created by maiko morisaki on 2021/10/02.
//

import Foundation

protocol FeedViewModelInputs {
    
}

protocol FeedViewModelOutputs {
    
}

protocol FeedViewModelType {
    var input: FeedViewModelInputs { get }
    var output: FeedViewModelOutputs { get }
}

class FeedViewModel: FeedViewModelType, FeedViewModelInputs, FeedViewModelOutputs {
    
    // MARK: Properties
    var input: FeedViewModelInputs { return self }
    var output: FeedViewModelOutputs { return self }
    
    let wierframe: FeedWireframe
    
    init(wierframe: FeedWireframe) {
        self.wierframe = wierframe
    }
}

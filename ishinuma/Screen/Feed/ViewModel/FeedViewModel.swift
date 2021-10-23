//
//  FeedViewModel.swift
//  ishinuma
//
//  Created by maiko morisaki on 2021/10/02.
//

import Foundation
import Combine

// MARK: Input
protocol FeedViewModelInputs {
    func transitDetail()
}

// MARK: Outputs
protocol FeedViewModelOutputs {
    var stores: CurrentValueSubject<[StoreModel], Never> { get }
}

protocol FeedViewModelType {
    var input: FeedViewModelInputs { get }
    var output: FeedViewModelOutputs { get }
}

class FeedViewModel: FeedViewModelType, FeedViewModelInputs, FeedViewModelOutputs {
    
    // MARK: Properties
    var input: FeedViewModelInputs { return self }
    var output: FeedViewModelOutputs { return self }
    var stores = CurrentValueSubject<[StoreModel], Never>([])
    
    let wireframe: FeedWireframe
    
    init(wireframe: FeedWireframe) {
        self.wireframe = wireframe
        get()
    }
    
    private func get() {
        stores.value = StoreModel.get()
    }
    
    func transitDetail() {
        wireframe.transitDetail()
    }
}

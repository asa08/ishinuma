//
//  FeedBuilder.swift
//  FeedBuilder
//
//  Created by maiko morisaki on 2021/09/21.
//

import Foundation

class FeedBuilder {
    func build() -> FeedViewController {
        let controller = FeedViewController()
        let wireframe = FeedRouter(viewController: controller)
        let viewModel = FeedViewModel(wireframe: wireframe)
        wireframe.viewController = controller
        controller.initSelf(viewModel)
        return controller
    }
}

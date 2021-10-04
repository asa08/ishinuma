//
//  ViewController.swift
//  ishinuma
//
//  Created by maiko morisaki on 2021/09/15.
//

import UIKit

class FeedViewController: UIViewController {
    
    private var viewModel: FeedViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.view.backgroundColor = .white
    }
    
    func initSelf(_ viewModel: FeedViewModel) {
        self.viewModel = viewModel
    }
}


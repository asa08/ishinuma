//
//  ViewController.swift
//  ishinuma
//
//  Created by maiko morisaki on 2021/09/15.
//

import UIKit

class FeedViewController: UIViewController {
    
    @IBOutlet weak var tableView: FeedTableView!
    
    private var viewModel: FeedViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigation()
        guard let viewModel = viewModel else { return }
        tableView.initSelf(viewModel: viewModel)
    }
    
    private func setNavigation() {
        navigationController?.view.backgroundColor = .white
        title = "Stores"
    }
    
    func initSelf(_ viewModel: FeedViewModel) {
        self.viewModel = viewModel
    }
}


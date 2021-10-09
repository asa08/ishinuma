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
        navigationController?.view.backgroundColor = .white
        title = "Stores"
        guard let viewModel = viewModel else { return }
        tableView.initSelf(viewModel: viewModel)
    }
    
    func initSelf(_ viewModel: FeedViewModel) {
        self.viewModel = viewModel
    }
}


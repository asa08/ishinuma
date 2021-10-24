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
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .automatic
        let appearance = UINavigationBarAppearance()
        appearance.configureWithDefaultBackground()
        appearance.backgroundColor = .black
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        // Large Title 用 NavigationBar の色設定
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        // 通常の NavigationBar の色設定
        navigationController?.navigationBar.standardAppearance = appearance
        title = "ホーム"
    }
    
    func initSelf(_ viewModel: FeedViewModel) {
        self.viewModel = viewModel
    }
}


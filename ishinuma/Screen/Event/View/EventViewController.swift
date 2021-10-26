//
//  EventViewController.swift
//  ishinuma
//
//  Created by maiko morisaki on 2021/10/24.
//

import Foundation
import UIKit

class EventViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigation()
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
        title = "イベント"
    }
}

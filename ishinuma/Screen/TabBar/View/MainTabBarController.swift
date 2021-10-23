//
//  MainTabBarController.swift
//  ishinuma
//
//  Created by maiko morisaki on 2021/10/23.
//

import Foundation
import UIKit

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setColor()
        setTab()
    }
    
    private func setTab() {
        view.backgroundColor = .black
        let feedController = UINavigationController(rootViewController: FeedBuilder().build())
        let eventController = EventBuilder().build()
        viewControllers = [feedController, eventController]
    }
    
    private func setColor() {
        let appearance = UITabBarAppearance()
        appearance.backgroundColor =  UIColor.black
        tabBar.standardAppearance = appearance
        if #available(iOS 15.0, *) {
            tabBar.scrollEdgeAppearance = appearance
        }
    }
}

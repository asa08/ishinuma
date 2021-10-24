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
        setTab()
        setColor()
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
        UITabBar.appearance().tintColor = UIColor.white
        tabBar.standardAppearance = appearance
        if #available(iOS 15.0, *) {
            tabBar.scrollEdgeAppearance = appearance
        }
        guard let items = tabBar.items else { return }
        for item in items {
            item.imageInsets = UIEdgeInsets(top: 12, left: 0, bottom: 12, right: 0)
        }
        items[0].image = R.image.tab_home()
        items[1].image = R.image.tab_event()
    }
}

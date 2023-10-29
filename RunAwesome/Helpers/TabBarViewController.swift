//
//  TabBarViewController.swift
//  RunAwesome
//
//  Created by Lucas Barroso on 29/10/2023.
//

import UIKit

final class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.tintColor = UIColor.label
        tabBar.backgroundColor = .black.withAlphaComponent(0.4)
        setupViewControllers()
    }
    

    private func setupViewControllers() {
        viewControllers = [
        createViewControllers(for: HomeViewController(), title: "Run", systemImage: "hare"),
        createViewControllers(for: HistoryViewController(), title: "History", systemImage: "clock")
        ]
    }
    
    private func createViewControllers(for viewController: UIViewController, title: String, systemImage: String) -> UIViewController {
        let iconSymbol = UIImage(systemName: systemImage)
        let selectedSymbol = UIImage(systemName: systemImage, withConfiguration: UIImage.SymbolConfiguration(weight: .bold))
        let tabBarItem =  UITabBarItem(title: title, image: iconSymbol, selectedImage: selectedSymbol)
        viewController.tabBarItem = tabBarItem
        return viewController
    }
}

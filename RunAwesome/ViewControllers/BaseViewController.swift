//
//  BaseViewController.swift
//  RunAwesome
//
//  Created by Lucas Barroso on 27/10/2023.
//

import UIKit

class BaseViewController: UIViewController {
    
    private lazy var backgroundLayer: GradientView = {
        let v = GradientView(colors: [#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1), #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1), #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)])
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupConstraints()
    }
   

    private func setupView() {
        view.addSubview(backgroundLayer)
    }
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            backgroundLayer.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundLayer.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundLayer.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundLayer.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}

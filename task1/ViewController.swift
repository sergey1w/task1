//
//  ViewController.swift
//  task1
//
//  Created by sergey on 01.11.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private let gradientView = GradientView(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(gradientView)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let gradientViewWidth = gradientView.bounds.size.width
        let center = CGPoint(
            x: view.safeAreaInsets.left + 100 + gradientViewWidth / 2,
            y: view.center.y
        )
        
        gradientView.center = center
    }

}


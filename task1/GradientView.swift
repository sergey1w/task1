//
//  GradientView.swift
//  task1
//
//  Created by sergey on 01.11.2024.
//

import UIKit

final class GradientView: UIView {
    
    private let gradientLayer = CAGradientLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    private func setup() {
        layer.insertSublayer(gradientLayer, at: 0)
        bounds.size = CGSize(width: C.size, height: C.size)
        setupShadow()
        setupGradientLayer()
    }
    
    private func setupShadow() {
        layer.shadowOpacity = 1
        layer.shadowOffset = .zero
        layer.shadowRadius = C.shadowRadius
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: C.cornerRadius)
        layer.shadowPath = shadowPath.cgPath
    }
    
    private func setupGradientLayer() {
        gradientLayer.bounds.size = bounds.size
        gradientLayer.anchorPoint = .zero
        gradientLayer.position = .zero
        gradientLayer.startPoint = .zero
        gradientLayer.endPoint = .init(x: 1, y: 1)
        gradientLayer.colors = [C.blueColor, C.redColor]
       
        gradientLayer.cornerRadius = C.cornerRadius
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension GradientView {
    enum C {
        static let cornerRadius: CGFloat = 16
        static let size: CGFloat = 100
        static let shadowRadius: CGFloat = 8
        static let blueColor: CGColor = UIColor.blue.cgColor
        static let redColor: CGColor = UIColor.red.cgColor
    }
}

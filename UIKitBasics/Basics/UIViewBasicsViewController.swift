//
//  UIViewBasicsViewController.swift
//  UIKitBasics
//
//  Created by Sameer  on 23/08/25.
//

import Foundation
import UIKit

class UIViewBasicsViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        
        let greenRect = UIView(frame: CGRect(x: 100, y: 100, width: 200, height: 200))
        greenRect.backgroundColor = .systemGreen
        greenRect.layer.cornerRadius = 12
        
        let redRect = UIView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        redRect.backgroundColor = .systemRed
        redRect.layer.cornerRadius = 12
        redRect.alpha = 0.5
        
        greenRect.addSubview(redRect)
        view.addSubview(greenRect)
    }
}

#Preview {
    UIViewBasicsViewController()
}

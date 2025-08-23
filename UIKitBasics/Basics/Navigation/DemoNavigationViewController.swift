//
//  DemoNavigationViewController.swift
//  UIKitBasics
//
//  Created by Sameer  on 23/08/25.
//

import UIKit

class DemoNavigationViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Navigation Controller"
        
        let button = UIButton(type: .system)
        button.setTitle("Next View", for: .normal)
        button.frame = CGRect(x: 100, y: 200, width: 200, height: 50)
        button.tintColor = .white
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 12
        button.addTarget(self, action: #selector(nextView), for: .touchUpInside)
        
        view.addSubview(button)
    }
    
    @objc private func nextView() {
        let nextScreen = SecondNavigationViewController()
        navigationController?.pushViewController(nextScreen, animated: true)
    }
}

#Preview {
    DemoNavigationViewController()
}

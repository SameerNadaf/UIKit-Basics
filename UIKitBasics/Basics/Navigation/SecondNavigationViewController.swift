//
//  SecondNavigationViewController.swift
//  UIKitBasics
//
//  Created by Sameer  on 23/08/25.
//

import UIKit

class SecondNavigationViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second View"
        
        view.backgroundColor = .systemMint
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"), style: .plain, target: self, action: #selector(popScreen))
    }
    
    @objc private func popScreen() {
        navigationController?.popViewController(animated: true)
    }
}

#Preview {
    SecondNavigationViewController()
}

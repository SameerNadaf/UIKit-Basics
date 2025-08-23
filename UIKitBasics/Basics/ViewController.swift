//
//  ViewController.swift
//  UIKitBasics
//
//  Created by Sameer  on 13/08/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func logInButtonPressed(_ sender: UIButton) {
        print("LogIn Button Pressed!!!!!")
        print("Email: \(email.text ?? "") \nPassword: \(password.text ?? "")")
    }
    
}


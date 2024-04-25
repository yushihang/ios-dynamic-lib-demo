//
//  ViewController.swift
//  app
//
//  Created by yushihang on 2024/4/25.
//

import UIKit
import frameworka
import frameworkb

class ViewControllerApp: UIViewController {

    @objc func buttonATapped() {
        let vc = ViewControllerA()
        self.present(vc, animated: true)
    }
    
    
    
    @objc func buttonBTapped() {
        let vc = ViewControllerB()
        self.present(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            // Create a button
            let button = UIButton(type: .system)
            button.setTitle("app - A", for: .normal)
            button.addTarget(self, action: #selector(buttonATapped), for: .touchUpInside)
            button.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(button)
            
            // Add constraints to position the button
            NSLayoutConstraint.activate([
                button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                button.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100)
            ])
            
        }
        
        do {
            // Create a button
            let button = UIButton(type: .system)
            button.setTitle("app - B", for: .normal)
            button.addTarget(self, action: #selector(buttonBTapped), for: .touchUpInside)
            button.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(button)
            
            // Add constraints to position the button
            NSLayoutConstraint.activate([
                button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                button.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 100)
            ])
            
        }
 
        // Do any additional setup after loading the view.
    }


}


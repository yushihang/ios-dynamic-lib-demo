//
//  ViewControllerB.swift
//  frameworkb
//
//  Created by yushihang on 2024/4/25.
//

import UIKit
import staticlib

class Test {
    static var getName: String {
        "framework b"
    }
}
public class ViewControllerB: UIViewController {

    @objc func buttonTapped() {
        StaticLib.shared.value += 1
        print("[B]: StaticLib.shared.value: \(StaticLib.shared.value)")
    }
    
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        
        // Create a button
        let button = UIButton(type: .system)
        button.setTitle(Test.getName, for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        
        // Add constraints to position the button
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

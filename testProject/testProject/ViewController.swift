//
//  ViewController.swift
//  testProject
//
//  Created by Stanislav Miloradov on 09/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    let myButton = UIButton()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton()
        button.frame = view.bounds
        button.backgroundColor = UIColor.yellow
        view.addSubview(button)
        button.setTitle("number 1", for: .normal)
        button.setTitleColor(UIColor.black, for: UIControl.State.normal)
        
        
        
        
        
        
        
    }
    
    


}


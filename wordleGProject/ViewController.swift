//
//  ViewController.swift
//  wordleGProject
//
//  Created by Viren Rakholiya on 22/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    let keyboardViewC = KeyboardViewController()
    let WordleBoardViewC = WordleBoardViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addChildrenControllers()
    }
    
    private func addChildrenControllers(){
        addChild(keyboardViewC)
        keyboardViewC.didMove(toParent: self)
        keyboardViewC.view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(keyboardViewC.view)
        
        addChild(WordleBoardViewC)
        WordleBoardViewC.didMove(toParent: self)
        WordleBoardViewC.view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(WordleBoardViewC.view)
    }


}


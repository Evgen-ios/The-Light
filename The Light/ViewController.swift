//
//  ViewController.swift
//  The Light
//
//  Created by Evgeniy Goncharov on 08.02.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var colorLigh = 0
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switchlight(number: colorLigh)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        switchlight(number: colorLigh)
        
    }
    
    //    MARK: Switch Light
    func switchlight(number: Int) {
        switch number {
        case 1:
            view.backgroundColor = .green
        case 2:
            view.backgroundColor = .red
        case 3:
            view.backgroundColor = .yellow
        default:
            view.backgroundColor = .white
            colorLigh = 0
        }
        
        colorLigh += 1
        
    }
}

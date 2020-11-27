//
//  ViewController.swift
//  TabBar
//
//  Created by 이명직 on 2020/11/18.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func MoveSecond(_ sender: Any) {
        guard let second = tabBarController?.viewControllers?[1] else {
            return
        }
        tabBarController?.selectedViewController = second
    }
    
    @IBAction func MoveThird(_ sender: Any) {
        guard let third = tabBarController?.viewControllers?[2]
        else {
            return
        }
        tabBarController?.selectedViewController = third
    }
    
}


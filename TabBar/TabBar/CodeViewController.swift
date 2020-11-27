//
//  CodeViewController.swift
//  TabBar
//
//  Created by 이명직 on 2020/11/18.
//

import UIKit

class CodeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func codeTab(_ sender: Any) {
        guard let first = storyboard?.instantiateViewController(identifier: "FirstView") else {
            return
        }
        guard let second = storyboard?.instantiateViewController(identifier: "SecondView") else {
            return
        }
        guard let third = storyboard?.instantiateViewController(identifier: "ThirdView") else {
            return
        }
        
        let tb = UITabBarController()
        
        tb.setViewControllers([first, second, third], animated: true)
        
        present(tb, animated: true, completion: nil)
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

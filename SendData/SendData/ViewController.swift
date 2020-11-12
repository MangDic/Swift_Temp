//
//  ViewController.swift
//  SendData
//
//  Created by 이명직 on 2020/11/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameStr: UITextField!
    @IBOutlet weak var ageStr: UITextField!
    @IBOutlet weak var update: UISwitch!
    @IBOutlet weak var frequency: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sendData(_ sender: Any) {
        
        guard let receiveViewController = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as? SecondViewController else {
            return
        }
        
        receiveViewController.name = nameStr.text
        receiveViewController.age = ageStr.text
        receiveViewController.update = update.isOn
        receiveViewController.frequency = frequency.value
        
        self.present(receiveViewController, animated: true, completion: nil)
    }
    
}


//
//  SecondViewController.swift
//  SendData
//
//  Created by 이명직 on 2020/11/11.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var updateLabel: UILabel!
    @IBOutlet weak var frequencyLabel: UILabel!
    
    var name : String?
    var age : String?
    var update : Bool?
    var frequency : Float?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setData()

        // Do any additional setup after loading the view.
    }
    
    private func setData() {
        guard let name = self.name else {
            return
        }
        guard let age = self.age else {
            return
        }
        guard let update = self.update else {
            return
        }
        guard let frequency = self.frequency else {
            return
        }
        
        nameLabel.text = name
        ageLabel.text = age
        updateLabel.text = update ? "On" : "Off"
        frequencyLabel.text = "\(frequency)"
    }
    
    @IBAction func dismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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

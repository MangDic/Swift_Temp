//
//  SecondViewController.swift
//  TableView
//
//  Created by 이명직 on 2020/11/03.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var Label: UILabel!
    var receivedStr : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        print("SecondViewController viewDidLoad 호출")
        print(receivedStr)
        if let temp = receivedStr {
            Label.text = receivedStr
        }
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("SecondViewController viewWillAppear 호출")
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

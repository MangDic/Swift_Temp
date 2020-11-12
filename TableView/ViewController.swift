//
//  ViewController.swift
//  TableView
//
//  Created by 이명직 on 2020/11/02.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var TableViewMain: UITableView!
    
    // 테이블뷰 셀의 개수, 데이터가 몇 개 인지?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 셀 10개를 보여주겠다!!
        return 10
    }
    
    // 테이블뷰 셀, 데이터가 무엇인지??
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = TableViewMain.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        cell.Label.text = "\(indexPath.row)"
        
        return cell
    }
    
    // 선택된 셀에 대한 처리
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("선택된 셀의 인덱스는 \(indexPath.row)")

        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        controller.receivedStr = "\(indexPath.row)"
        
        // String 호출
        print(controller.receivedStr)
        // Label 호출
        print(controller.Label.text)
        

    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("ViewController viewWillAppear 호출")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableViewMain.delegate = self
        TableViewMain.dataSource = self
        // Do any additional setup after loading the view.
    }


}




//
//  ViewController.swift
//  AttributedStr
//
//  Created by 이명직 on 2021/03/29.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        testLabel.text = "망딕망딕 망딕요요 망딕이야~~"
        
        setAttribute(inputString: testLabel.text!, searchString: "망딕")
        

    }
    
    func setAttribute(inputString: String, searchString: String) {
        
        let attrStr = NSMutableAttributedString(string: inputString)
        let inputLength = inputString.count
        
        var range = NSRange(location: 0, length: inputLength)
        
        var rangeArray = [NSRange]()
        
        while range.location != NSNotFound {
            
            range = (attrStr.string as NSString).range(of: searchString, options: .caseInsensitive, range: range)
            rangeArray.append(range)
            if(range.location != NSNotFound) {
                print(range)
                
                range = NSRange(location: range.location + range.length, length: inputString.count - (range.location + range.length))
            }
        }
        rangeArray.forEach{ (range) in
            attrStr.addAttribute(.foregroundColor, value: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), range: range)
        }
        self.testLabel.attributedText = attrStr
        
    }
}


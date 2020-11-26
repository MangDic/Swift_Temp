//
//  ViewController.swift
//  CollectionView
//
//  Created by 이명직 on 2020/11/26.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    // 데이터가 몇 개인지??
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    // 데이터가 무엇인지??
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        
        cell.label.text = "\(indexPath.row + 1)"
        
        cell.layer.cornerRadius = 8
        cell.layer.backgroundColor = UIColor.gray.cgColor
        
        return cell
    }
    
    // 셀 클릭 이벤트 !
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("\(indexPath.row + 1)")
    }
    

    @IBOutlet weak var collectionMain: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionMain.delegate = self
        collectionMain.dataSource = self
        // Do any additional setup after loading the view.
    }


}


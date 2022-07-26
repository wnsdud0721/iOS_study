//
//  ViewController.swift
//  ScrollView
//
//  Created by Junyoung_Hong on 2022/07/23.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var thumbnail = [UIImage(named: "1"), UIImage(named: "2"), UIImage(named: "3"), UIImage(named: "4"),]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return thumbnail.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
            as! MyCollectionCell
        
        cell.thumbNail.image = thumbnail[indexPath.row]
        cell.thumbNail.layer.borderColor = UIColor.lightGray.cgColor
        cell.thumbNail.layer.borderWidth = 0.5
        cell.thumbNail.layer.cornerRadius = 10
        
        return cell
        
    }
    
    
    //var thumbnail:[String] = ["poiu", "asdfg", "qwer", "thumbnail2"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}


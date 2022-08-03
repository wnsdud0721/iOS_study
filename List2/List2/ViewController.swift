//
//  ViewController.swift
//  List2
//
//  Created by Junyoung_Hong on 2022/08/03.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return webtoonlist.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
            as! MyCollectionViewCell
        
        cell.setup(with: webtoonlist[indexPath.row])
        cell.listImage.layer.borderColor = UIColor.lightGray.cgColor
        cell.listImage.layer.cornerRadius = 10
        cell.listImage.layer.borderWidth = 0.5
        
        return cell
    }
    

//    var listImage:[String] = ["naver12", "naver11", "naver10", "naver9", "naver8", "naver7", "naver6", "naver1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


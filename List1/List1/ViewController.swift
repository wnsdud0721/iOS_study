//
//  ViewController.swift
//  List1
//
//  Created by Junyoung_Hong on 2022/08/03.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet var CollectionView1: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        CollectionView1.delegate = self
        CollectionView1.dataSource = self
        CollectionView1.collectionViewLayout = UICollectionViewFlowLayout()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return list.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath)
            as! MyCollectionViewCell1
        
        cell1.setup(with: list[indexPath.row])
        cell1.listImg.layer.borderColor = UIColor.lightGray.cgColor
        cell1.listImg.layer.borderWidth = 0.5
        cell1.listImg.layer.cornerRadius = 10
        
        return cell1
    }
    
    
    


}


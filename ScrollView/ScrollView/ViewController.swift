//
//  ViewController.swift
//  ScrollView
//
//  Created by Junyoung_Hong on 2022/07/23.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet var CollectionView1: UICollectionView!
    
    @IBOutlet var CollectionView2: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        CollectionView1.delegate = self
        CollectionView1.dataSource = self
        //CollectionView1.register(UICollectionView.self, forCellWithReuseIdentifier: "cell")
        
        CollectionView2.delegate = self
        CollectionView2.dataSource = self
        //CollectionView2.register(UICollectionView.self, forCellWithReuseIdentifier: "cell_second")
        
        
        
    }
    
    // 오늘의 인기작
    var thumbnail = [UIImage(named: "asdfg.jpg"), UIImage(named: "2"), UIImage(named: "3"), UIImage(named: "4"), UIImage(named: "5")]
    
    // Re:Toon의 웹툰 추천작
    var thumbnail2 = [UIImage(named: "6"), UIImage(named: "7"), UIImage(named: "8"), UIImage(named: "9")]

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == CollectionView1 {
            return thumbnail.count
        }
        
        if collectionView == CollectionView2 {
            return thumbnail2.count
        }
        
        return 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == CollectionView1 {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
                as! MyCollectionCell
            
            cell.thumbNail.image = thumbnail[indexPath.row]
            cell.thumbNail.layer.borderColor = UIColor.lightGray.cgColor
            cell.thumbNail.layer.borderWidth = 0.5
            cell.thumbNail.layer.cornerRadius = 10
            
            return cell

        }
        
        if collectionView == CollectionView2 {
            
            let cell_second = collectionView.dequeueReusableCell(withReuseIdentifier: "cell_second", for: indexPath)
                as! MyCollectionCell2
            
            cell_second.thumbNail2.image = thumbnail2[indexPath.row]
            cell_second.thumbNail2.layer.borderColor = UIColor.lightGray.cgColor
            cell_second.thumbNail2.layer.borderWidth = 0.5
            cell_second.thumbNail2.layer.cornerRadius = 10
            
            return cell_second
        }
        
        return UICollectionViewCell()

    }


}


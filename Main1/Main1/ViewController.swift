//
//  ViewController.swift
//  Main1
//
//  Created by Junyoung_Hong on 2022/07/29.
//

import UIKit


class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    @IBOutlet var CollectionView2: UICollectionView!
    @IBOutlet var CollectionView3: UICollectionView!
    @IBOutlet var CollectionView1: UICollectionView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        CollectionView1.delegate = self
        CollectionView1.dataSource = self
        //CollectionView1.collectionViewLayout = UICollectionViewFlowLayout()
        
        
        CollectionView2.delegate = self
        CollectionView2.dataSource = self
        
        CollectionView3.delegate = self
        CollectionView3.dataSource = self
        
    }
    
    
    // MARK: 오늘의 리뷰
    var todayReview = [UIImage(named: "naver1.jpeg"), UIImage(named: "naver2.jpeg"), UIImage(named: "naver3.jpeg")]
    
    
    // MARK: 오늘의 인기작
    var todayRank1 = [UIImage(named: "naver8.jpeg"), UIImage(named: "naver9.jpeg"), UIImage(named: "naver10.jpeg"), UIImage(named: "naver11.jpeg"), UIImage(named: "naver8.jpeg"), UIImage(named: "naver9.jpeg"), UIImage(named: "naver10.jpeg"), UIImage(named: "naver11.jpeg"), UIImage(named: "naver8.jpeg"), UIImage(named: "naver9.jpeg"), UIImage(named: "naver10.jpeg"), UIImage(named: "naver11.jpeg")]
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == CollectionView1 {
            return todayRank1.count
        }
        
        if collectionView == CollectionView2 {
            return todayReview.count
        }
        
        if collectionView == CollectionView3 {
            return userrecommend.count
        }
        
        return 0
    }
    
    let sectionInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 40)
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        if collectionView == CollectionView1 {
            let width = collectionView.frame.width
            let height = collectionView.frame.height
            let itemsPerRow: CGFloat = 1.5
            let widthPadding = sectionInsets.left * (itemsPerRow + 1)
            let itemsPerColumn: CGFloat = 3.3
            let heightPadding = sectionInsets.top * (itemsPerColumn + 1)
            let cellWidth = (width - widthPadding) / itemsPerRow
            let cellHeight = (height - heightPadding) / itemsPerColumn

            return CGSize(width: cellWidth, height: cellHeight)
        }
        
        if collectionView == CollectionView3 {
            let width = collectionView.frame.width
            let height = collectionView.frame.height
            let itemsPerRow: CGFloat = 6.5
            let widthPadding = sectionInsets.left * (itemsPerRow + 1)
            let itemsPerColumn: CGFloat = 1
            let heightPadding = sectionInsets.top * (itemsPerColumn)
            let cellWidth = (width - widthPadding) / itemsPerRow
            let cellHeight = (height - heightPadding) / itemsPerColumn

            return CGSize(width: cellWidth, height: cellHeight)
        }
        return CGSize(width: 0, height: 0)
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == CollectionView1 {
            let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath)
                as! MyCollectionViewCell1
            
            cell1.todayRank1.image = todayRank1[indexPath.row]
            cell1.todayRank1.layer.borderColor = UIColor.lightGray.cgColor
            cell1.todayRank1.layer.borderWidth = 0.5
            cell1.todayRank1.layer.cornerRadius = 10
            
            return cell1
        }
        
        if collectionView == CollectionView2 {
            let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath)
                as! MyCollectionViewCell2
            
            cell2.todayReview.image = todayReview[indexPath.row]
            cell2.todayReview.layer.borderColor = UIColor.lightGray.cgColor
            cell2.todayReview.layer.borderWidth = 0.5
            cell2.todayReview.layer.cornerRadius = 10
            
            return cell2
        }
        
        if collectionView == CollectionView3 {
            let cell3 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath)
                as! MyCollectionViewCell3
            
            cell3.setup(with: userrecommend[indexPath.row])
            cell3.userRecommendImg.layer.borderColor = UIColor.lightGray.cgColor
            cell3.userRecommendImg.layer.borderWidth = 0.5
            cell3.userRecommendImg.layer.cornerRadius = 10
            
            return cell3
        }
        
        return UICollectionViewCell()
    }
    
}



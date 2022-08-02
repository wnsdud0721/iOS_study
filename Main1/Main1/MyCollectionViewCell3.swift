//
//  MyCollectionViewCell3.swift
//  Main1
//
//  Created by Junyoung_Hong on 2022/07/29.
//

import UIKit

class MyCollectionViewCell3: UICollectionViewCell {
    
    
    @IBOutlet var userRecommendImg: UIImageView!
    @IBOutlet var userRecommendImgName: UILabel!
    
    @IBOutlet var userRecommendImgPlatform: UILabel!
    
    @IBOutlet var userRecommendImgWriter: UILabel!
    
    @IBOutlet var userRecommendImgScore: UILabel!
    
    func setup(with userrecommend: userRecommend) {
        userRecommendImg.image = userrecommend.userRecommendImage
        userRecommendImgName.text = userrecommend.userRecommendTitle
        userRecommendImgPlatform.text = userrecommend.userRecommendPlatform
        userRecommendImgWriter.text = userrecommend.userRecommendWriter
        userRecommendImgScore.text = userrecommend.userRecommendScore
    }
    
}

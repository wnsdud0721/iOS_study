//
//  MyCollectionViewCell.swift
//  List2
//
//  Created by Junyoung_Hong on 2022/08/03.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var listImage: UIImageView!
    @IBOutlet var listTitle: UILabel!
    @IBOutlet var listPlatform: UILabel!
    @IBOutlet var listWriter: UILabel!
    @IBOutlet var listScore: UILabel!
    
    func setup(with webtoonlist: webtoonList) {
        listImage.image = webtoonlist.ListImage
        listTitle.text = webtoonlist.ListTitle
        listPlatform.text = webtoonlist.ListPlatform
        listWriter.text = webtoonlist.ListWriter
        listScore.text = webtoonlist.ListScore
    }
    
    
}

//
//  MyCollectionViewCell1.swift
//  List1
//
//  Created by Junyoung_Hong on 2022/08/03.
//

import UIKit

class MyCollectionViewCell1: UICollectionViewCell {
    
    @IBOutlet var listImg: UIImageView!
    @IBOutlet var listName: UILabel!
    @IBOutlet var listPlatform: UILabel!
    @IBOutlet var listWriter: UILabel!
    @IBOutlet var listScore: UILabel!
    
    func setup(with list: List) {
        listImg.image = list.ListImage
        listName.text = list.ListTitle
        listPlatform.text = list.ListPlatform
        listWriter.text = list.ListWriter
        listScore.text = list.ListScore
    }
}

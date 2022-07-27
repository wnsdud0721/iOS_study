//
//  Model.swift
//  MainScene
//
//  Created by Junyoung_Hong on 2022/07/27.
//

struct Model {
    let imageName: String   // 웹툰 썸네일
    let title: String       // 웹툰 이름
    
    init(imageName: String, title: String) {
        self.imageName = imageName
        self.title = title
    }
}

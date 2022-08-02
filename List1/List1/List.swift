//
//  List.swift
//  List1
//
//  Created by Junyoung_Hong on 2022/08/03.
//

import UIKit

struct List {
    let ListTitle: String
    let ListPlatform: String
    let ListWriter: String
    let ListScore: String
    let ListImage: UIImage
}

let list: [List] = [
    List(ListTitle: "갓 오브 하이스쿨", ListPlatform: "네이버 웹툰", ListWriter: "박용제", ListScore: "4.5", ListImage: #imageLiteral(resourceName: "갓 오브 하이스쿨")),
    List(ListTitle: "연애혁명", ListPlatform: "네이버 웹툰", ListWriter: "232", ListScore: "4.5", ListImage: #imageLiteral(resourceName: "연애혁명")),
    List(ListTitle: "신화급 귀속 아이템을 손에 넣었다", ListPlatform: "네이버 웹툰", ListWriter: "박용제", ListScore: "4.5", ListImage: #imageLiteral(resourceName: "신화급 귀속 아이템을 손에 넣었다")),
    List(ListTitle: "나노마신", ListPlatform: "네이버 웹툰", ListWriter: "박용제", ListScore: "4.5", ListImage: #imageLiteral(resourceName: "나노마신")),
    List(ListTitle: "일렉시드", ListPlatform: "네이버 웹툰", ListWriter: "박용제", ListScore: "4.5", ListImage: #imageLiteral(resourceName: "일렉시드")),
    List(ListTitle: "장씨세가 호위무사", ListPlatform: "네이버 웹툰", ListWriter: "박용제", ListScore: "4.5", ListImage: #imageLiteral(resourceName: "장씨세가 호위무사")),
    List(ListTitle: "투신전생기", ListPlatform: "네이버 웹툰", ListWriter: "박용제", ListScore: "4.5", ListImage: #imageLiteral(resourceName: "투신전생기")),
    List(ListTitle: "전지적 독자 시점", ListPlatform: "네이버 웹툰", ListWriter: "박용제", ListScore: "4.5", ListImage: #imageLiteral(resourceName: "전지적 독자 시점"))
]


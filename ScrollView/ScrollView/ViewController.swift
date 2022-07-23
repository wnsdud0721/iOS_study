//
//  ViewController.swift
//  ScrollView
//
//  Created by Junyoung_Hong on 2022/07/23.
//

import UIKit

class ViewController: UIViewController {
    
    var img1: UIImage?
    var img2: UIImage?
    var img3: UIImage?

    @IBOutlet var imgView1: UIImageView!
    
    @IBOutlet var imgView2: UIImageView!
    
    @IBOutlet var imgView3: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        img1 = UIImage(named: "poiu.png")
        img2 = UIImage(named: "qwer.jpeg")
        img3 = UIImage(named: "thumbnail2.jpeg")
        
        imgView1.image = img1
        imgView2.image = img2
        imgView3.image = img3
        
        imgView1.layer.borderColor = UIColor.lightGray.cgColor
        imgView1.layer.borderWidth = 0.5
        imgView1.layer.cornerRadius = 10
        
        imgView2.layer.borderColor = UIColor.lightGray.cgColor
        imgView2.layer.borderWidth = 0.5
        imgView2.layer.cornerRadius = 10
        
        imgView3.layer.borderColor = UIColor.lightGray.cgColor
        imgView3.layer.borderWidth = 0.5
        imgView3.layer.cornerRadius = 10
    }


}


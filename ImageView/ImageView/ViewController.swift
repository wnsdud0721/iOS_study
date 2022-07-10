//
//  ViewController.swift
//  ImageView
//
//  Created by Junyoung_Hong on 2022/07/08.
//

import UIKit

class ViewController: UIViewController {
    
    var isZoom = false
    var imgOn: UIImage?
    var imgOff: UIImage?
    
    @IBOutlet var imgView: UIImageView!
    
    @IBOutlet var btnResize: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imgOn = UIImage(named: "light-bulb-on-off.jpeg")
        imgOff = UIImage(named: "light-bulb-on-off2.jpeg")
        
        imgView.image = imgOn
        
    }

    @IBAction func btnResizeImage(_ sender: UIButton) {
        let scale: CGFloat = 2.0
        var newWidth: CGFloat, newHeight: CGFloat
        
        if (isZoom) {   // true, 현재 상태가 확대 일 때
            // 이미지 프레임의 가로, 세로 크기에 scale 값을 나누어 newWidth와 newHeight에 할당
            newWidth = imgView.frame.width/scale
            newHeight = imgView.frame.height/scale
            // 버튼의 텍스트를 확대로 변경
            btnResize.setTitle("확대", for: .normal)
        }
        else {  // false, 현재 상태가 축소 일 때
            newWidth = imgView.frame.width*scale
            newHeight = imgView.frame.height*scale
            // 버튼의 텍스트를 축소로 변경
            btnResize.setTitle("축소", for: .normal)
        }
        // CGSize 메서드를 사용하여 이미지 뷰의 프레임 크기를 변경
        imgView.frame.size = CGSize(width: newWidth, height: newHeight)
        isZoom = !isZoom
    }
    
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
        if sender.isOn {
            imgView.image = imgOn
        }
        else {
            imgView.image = imgOff
        }
        
    }
    
    
}


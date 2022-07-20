//
//  ViewController.swift
//  Alert
//
//  Created by Junyoung_Hong on 2022/07/19.
//

import UIKit

class ViewController: UIViewController {
    
    let imgOn = UIImage(named: "bannerimg2.png")
    let imgOff = UIImage(named: "bannerimg3.png")
    let imgRemove = UIImage(named: "bannerimg4.jpeg")
    
    var isLampOn = true
    

    @IBOutlet var lampImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lampImg.image = imgOn
    }


    @IBAction func btnLampOn(_ sender: UIButton) {
        if(isLampOn==true) {
            // 전구가 켜져 있는 경우
            // UIAlertController를 생성
            let lampOnAlert = UIAlertController(title: "경고", message: "현재 On 상태입니다", preferredStyle: UIAlertController.Style.alert)
            // UIAlertAction을 생성(특별한 동작을 하지 않을 경우에는 handler를 nil로 함
            let onAction = UIAlertAction(title: "네, 알겠습니다.", style: UIAlertAction.Style.default, handler: nil)
            // 생성된 onAction을 얼럿에 추가
            lampOnAlert.addAction(onAction)
            // present 메서드를 실행
            present(lampOnAlert, animated: true, completion: nil)
        } else {
            // 전구가 켜져 있지 않을 때
            lampImg.image = imgOn
            isLampOn=true
        }
    }
    
    @IBAction func btnLampOff(_ sender: UIButton) {
        if isLampOn {
            // UIAlertController를 생성
            let lampOffAlert = UIAlertController(title: "램프 끄기", message: "램프를 끄시겠습니까?", preferredStyle: UIAlertController.Style.alert)
            // UIAlertAction을 생성, 전구를 꺼야 하므로 핸들러에 중괄호{,}를 넣어 추가적으로 작업, 반드시 self를 붙여야 에러X
            let offAction = UIAlertAction(title: "네", style: UIAlertAction.Style.default, handler: {ACTION in self.lampImg.image = self.imgOff
                self.isLampOn=false
            })
            // UIAlertAction을 추가로 생성, 특별한 동작을 하지 않을 경우에는 핸들러를 nil로 함
            let cancelAction = UIAlertAction(title: "아니오", style: UIAlertAction.Style.default, handler: nil)
            
            // 생성된 offAction, cancelAction을 얼럿에 추가
            lampOffAlert.addAction(offAction)
            lampOffAlert.addAction(cancelAction)
            
            // present 메서들르 실행
            present(lampOffAlert, animated: true, completion: nil)
        }
    }
    
    @IBAction func btnLampRemove(_ sender: UIButton) {
        // UIAlertController를 생성
        let lampRemoveAlert = UIAlertController(title: "램프 제거", message: "램프를 제거하시겠습니까?", preferredStyle: UIAlertController.Style.alert)
        
        // UIAlertAction을 생성, 전구를 꺼야 하므로 handler에 {,}를 넣어 추가적으로 작업
        let offAction = UIAlertAction(title: "아니오, 끕니다(off).", style: UIAlertAction.Style.default, handler: {ACTION in self.lampImg.image = self.imgOff
            self.isLampOn=false
        })
        // UIAlertAction을 추가로 생성, 전구를 켜는 동작을 추가, 핸들러 매개변수를 삭제하고 뒤쪽에 {,}를 넣는 방법을 이용
        let onAction = UIAlertAction(title: "아니오, 켭니다(on)", style: UIAlertAction.Style.default) {
            ACTION in self.lampImg.image = self.imgOn
            self.isLampOn=true
        }
        // UIAlertAction을 추가로 생성한 후 전구를 제거하는 동작을 추가
        let removeAction = UIAlertAction(title: "네, 제거합니다.", style: UIAlertAction.Style.destructive, handler: {ACTION in self.lampImg.image = self.imgRemove
            self.isLampOn=false
        })
        // 생성된 offAction, onAction, removeAction을 얼럿에 추가
        lampRemoveAlert.addAction(offAction)
        lampRemoveAlert.addAction(onAction)
        lampRemoveAlert.addAction(removeAction)
        // present 메서드를 실행
        present(lampRemoveAlert, animated: true, completion: nil)
    }
}


//
//  ViewController.swift
//  PageControl
//
//  Created by Junyoung_Hong on 2022/07/21.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    
    var images = [#imageLiteral(resourceName: "bannerimg1.jpeg"), #imageLiteral(resourceName: "bannerimg2.png"), #imageLiteral(resourceName: "bannerimg3.png"), #imageLiteral(resourceName: "bannerimg4.jpeg")]
    
//    var images = [UIImage(named: "bannerimg1.jpeg"), UIImage(named: "bannerimg2.png"), UIImage(named: "bannerimg3.png"), UIImage(named: "bannerimg4.jpeg")]
    var imageViews = [UIImageView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        scrollView.delegate = self
        addContentScrollView()
        setPageControl()

    }
    
    private func addContentScrollView() {
        
        for i in 0..<images.count {
            let imageView = UIImageView()
            let xPos = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPos, y: 0, width: scrollView.bounds.width, height: scrollView.bounds.height)
            imageView.image = images[i]
            scrollView.addSubview(imageView)
            scrollView.contentSize.width = imageView.frame.width * CGFloat(i + 1)
        }
    }
    
    private func setPageControl() {
        pageControl.numberOfPages = images.count
    }
    
    private func setPageControlSelectedPage(currentPage:Int) {
        pageControl.currentPage = currentPage
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let value = scrollView.contentOffset.x/scrollView.frame.size.width
        setPageControlSelectedPage(currentPage: Int(round(value)))
    }
    
}


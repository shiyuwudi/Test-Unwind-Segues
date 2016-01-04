//
//  GreenViewController.swift
//  20151231-Unwind Segues
//
//  Created by apple2 on 16/1/1.
//  Copyright © 2016年 shiyuwudi. All rights reserved.
//

import Foundation
import UIKit

class ChildViewController: UIViewController {
    
}

class GreenViewController:UIViewController {
    
    @IBOutlet weak var greenLabel: UILabel!

    override func viewWillAppear(animated: Bool) {
        print(self)
    }
    
    @IBAction func unwindToGreen(segue:UIStoryboardSegue){
        
    }
    
}

class YellowViewController:UIViewController {
    
    @IBOutlet weak var unwindToRedBtn:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let childVC:UIViewController = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("green")
//        addChildVC(childVC)
    }
    
//    func addChildVC(childController: UIViewController) {
//        let bottom = unwindToRedBtn.bottom
//        let space = 30 as CGFloat
//        let frame = CGRectMake(0, bottom + space, 0.5 * UIView.screenW, 100)
//        
//        addChildViewController(childController)
//        childController.view.frame = frame
//        view .addSubview(childController.view)
//        childController .didMoveToParentViewController(self)
//    }
}

extension UIView{
    var bottom: CGFloat{
        return frame.origin.y;
    }
    var width: CGFloat{
        return frame.size.width;
    }
    static var screenW: CGFloat{
        return UIScreen.mainScreen().bounds.width;
    }
}















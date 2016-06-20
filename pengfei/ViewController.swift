//
//  ViewController.swift
//  pengfei
//
//  Created by 王凯 on 16/6/20.
//  Copyright © 2016年 joyyog. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var whiteview: UIView!
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var button: UIButton!
    
    var myview:UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myview = UIView(frame: CGRectMake(0,self.view.frame.height,self.view.frame.width,self.view.frame.height*2/3))
        print(myview.frame)
        myview.backgroundColor = UIColor.brownColor()
        button.addTarget(self, action: #selector(ViewController.click), forControlEvents: .TouchUpInside)
        backButton.addTarget(self, action: #selector(ViewController.backClick), forControlEvents: .TouchUpInside)
        view.addSubview(myview)
        backButton.alpha = 0.3
        backButton.hidden = true
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func click(){
    
    UIView.animateWithDuration(0.4) {
        self.whiteview.layer.setAffineTransform(CGAffineTransformMakeScale(0.8, 0.8))
        self.myview.frame = CGRectMake(0, self.view.frame.height/3, self.view.frame.width, self.view.frame.height*2/3)
        
        
        }
        backButton.hidden = false
    }
    
    func backClick(){
        UIView.animateWithDuration(0.4) {
            self.whiteview.layer.setAffineTransform(CGAffineTransformMakeScale(1, 1))
            self.myview.frame = CGRectMake(0, self.view.frame.height, self.view.frame.width, self.view.frame.height*2/3)
            
            
        }
        backButton.hidden = true
        
    }
}


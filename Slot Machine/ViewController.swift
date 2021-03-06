//
//  ViewController.swift
//  Slot Machine
//
//  Created by Kevin Colten on 1/31/15.
//  Copyright (c) 2015 Kevin Colten. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var firstContainer: UIView!
    var secondContainer: UIView!
    var thirdContainer: UIView!
    var fourthContainer: UIView!
    
    let kMarginForView:CGFloat = 10.0
    let kSixth:CGFloat = 1.0/6.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupContainerViews()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setupContainerViews() {
        self.firstContainer = UIView(frame: CGRect(
            x: self.view.bounds.origin.x + kMarginForView,
            y: self.view.bounds.origin.y,
            width: self.view.bounds.width - (kMarginForView * 2),
            height: self.view.bounds.height * kSixth
        ))
        self.firstContainer.backgroundColor = UIColor.redColor()
        self.view.addSubview(self.firstContainer)
        
        self.secondContainer = UIView(frame: CGRect(
            x: self.view.bounds.origin.x + self.kMarginForView,
            y: self.firstContainer.frame.height,
            width: self.view.bounds.width - (self.kMarginForView * 2),
            height: self.view.bounds.height * ( 3 * self.kSixth)
        ))
        self.secondContainer.backgroundColor = UIColor.blackColor()
        self.view.addSubview(self.secondContainer)
        
        self.thirdContainer = UIView(frame: CGRect(
            x: self.view.bounds.origin.x + self.kMarginForView,
            y: self.firstContainer.frame.height + self.secondContainer.frame.height,
            width: self.view.bounds.width - (self.kMarginForView * 2),
            height: self.view.bounds.height * self.kSixth
        ))
        self.thirdContainer.backgroundColor = UIColor.lightGrayColor()
        self.view.addSubview(self.thirdContainer)
        
        self.fourthContainer = UIView(frame: CGRect(
            x: self.view.bounds.origin.x + self.kMarginForView,
            y: self.firstContainer.frame.height +
                self.secondContainer.frame.height +
                self.thirdContainer.frame.height,
            width: self.view.bounds.width - (self.kMarginForView * 2),
            height: self.view.bounds.height * self.kSixth
            ))
        self.fourthContainer.backgroundColor = UIColor.blackColor()
        self.view.addSubview(self.fourthContainer)

    }
}


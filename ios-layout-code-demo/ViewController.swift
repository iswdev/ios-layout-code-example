//
//  ViewController.swift
//  ios-layout-code-demo
//
//  Created by Francisco on 2018-10-09.
//  Copyright © 2018 franciscoigor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var constraints = [NSLayoutConstraint]()
        
        self.view.backgroundColor = UIColor.green
        
        let purpleBox = UIView()
        view.addSubview(purpleBox)
        purpleBox.backgroundColor = UIColor.purple
        

        
        constraints.append(
            NSLayoutConstraint(item: purpleBox, attribute: NSLayoutAttribute.trailing, relatedBy: NSLayoutRelation.equal
            , toItem: view, attribute: NSLayoutAttribute.trailing, multiplier: 1, constant: 20)
        )
        
        constraints.append(
            NSLayoutConstraint(item: purpleBox, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal
                , toItem: view, attribute: NSLayoutAttribute.bottom, multiplier: 1, constant: 20)
        )
        constraints.append(
            NSLayoutConstraint(item: purpleBox, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal
                , toItem: view, attribute: NSLayoutAttribute.width, multiplier: 0.6, constant: 0)
        )
        
        
        
        NSLayoutConstraint.activate(constraints)
        
    }
    
    override func viewDidLayoutSubviews() {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


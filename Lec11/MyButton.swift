//
//  MyButton.swift
//  Lec11
//
//  Created by hackeru on 14 Sivan 5778.
//  Copyright © 5778 student.roey.honig. All rights reserved.
//

import UIKit

class MyButton: UIButton {
    // we're basically want our own custom button\
    // in GitHub there are a lot of cusom views, not just buttons but other widgets
    
    //many times we've avoided the init with optionals and life-cycle hooks: will move to superView
    // so we can override the constractor, but don't forgt to call super
    
    // this is a constractor from the xml, meaning the storyboard, by connecting the correct MyButton class in the attributes
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //CGRect - Core Graphics Rectengle
        
        // customize the button (like, for example we want to create a facebook btn)
        customize()
    }
    
    
    // this is a constracto from the code
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        customize()
    }
    
    func customize(){
        // customize the button
        setTitle("FaceBook", for: .normal)
        layer.cornerRadius = 10
        layer.borderWidth = 2
        layer.borderColor = UIColor.cyan.cgColor
        clipsToBounds = true
        
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        
    }
     */

}

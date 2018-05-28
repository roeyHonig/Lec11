//
//  CustomDraw.swift
//  Lec11
//
//  Created by hackeru on 14 Sivan 5778.
//  Copyright © 5778 student.roey.honig. All rights reserved.
//

import UIKit
// important on order to actually see my custom design even without building the app
@IBDesignable
class CustomDraw: UIButton {
    // we've seen spme custom button
    // now we'll see that a widget can be completelly custome by a drawing
    
    
    
    
    
    // so this is a way to do , i need to chack the material
    @IBInspectable
    var factor: CGFloat = 0.5{
        didSet{
            // code that runs afther the value is set
            setNeedsDisplay() // redraw
        }
    }
    
    // computed properties
    var centerX: CGFloat {return bounds.width * factor}
    
    var centerY: CGFloat {return bounds.height * factor}
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    // when the draw function is called. there begins what is called graphical context
    
    
    override func draw(_ rect: CGRect) {
        
        
        
        
        // Drawing code
        // we need the object path , Bezier - matmathician
        let path = UIBezierPath(ovalIn: rect) // draw oval inside the rectengeler
        UIColor.blue.setFill() // change the fill color to yellow
        path.fill()
        
        path.lineWidth = 3
        UIColor.white.setStroke()
        path.move(to: CGPoint(x: centerX, y: centerY))
        path.addLine(to: CGPoint(x: centerX, y: centerY + 2 * centerY))
        path.stroke()
        path.addLine(to: CGPoint(x: centerX, y: centerY - 2 * centerY))
        path.stroke()
        path.move(to: CGPoint(x: 0 , y: centerY))
        path.addLine(to: CGPoint(x: centerX * 2, y: centerY))
        path.stroke()
        // path.stroke
        
        
        
        // do the painting, but becarfull it can fill everything
        //path.fill() // use the yellow color to fill the path
    
    
        // here is the end of the graphical contexct
    }
    

}

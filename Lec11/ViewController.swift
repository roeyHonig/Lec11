//
//  ViewController.swift
//  Lec11
//
//  Created by hackeru on 14 Sivan 5778.
//  Copyright © 5778 student.roey.honig. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func pickImage(_ sender: UIButton) {
        // instinatie an object
        // eventually we would want to present it
        let picker = UIImagePickerController()
        
        // we want to be the delegate (delegate is kund like a listener in android)
        picker.delegate = self
        
        // present the ViewController
        present(picker, animated: true) // no need for the completion block (we can omit the last parmeter)
    }
    @IBOutlet weak var galeryImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    //
}

// these are the protocole needed to be implementes in this "self" viewController
// in order to be the delegate
extension ViewController : UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) { // info is an array of key \ values
        // since we are the delegate we have to tell him when to dismiss
        print(info) // we're looking at all the key\values and looking for a particulat one
        
        // because the key \ values dictionary (info) can hold many keys and many values of diffrent type, it's up to me to cast it
        guard let image = info["UIImagePickerControllerOriginalImage"] as? UIImage else {
            return
        }
        
        galeryImageView.image = image
        
        
        picker.dismiss(animated: true)
    }
    
    
}

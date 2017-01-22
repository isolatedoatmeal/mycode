//
//  ViewController.swift
//  Class.e beta
//
//  Created by Daniel Milton on 1/19/17.
//  Copyright © 2017 IsolatedOatmeal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var addClassView: UIView!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        
        addClassView.layer.cornerRadius = 5
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func animateIn() {
        self.view.addSubview(addClassView)
        addClassView.center = self.view.center
        
        addClassView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
        addClassView.alpha = 0
        
        UIView.animate(withDuration: 0.4){
            
            
            self.addClassView.alpha = 1
            self.addClassView.transform = CGAffineTransform.identity
        }
        
    }
    
    func animateOut (){
        UIView.animate(withDuration: 0.3, animations: {
            self.addClassView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
            self.addClassView.alpha = 0
            
        }) { (successs:Bool) in
            self.addClassView.removeFromSuperview()
    }
    }

    @IBAction func dismissPopUp(_ sender: Any) {
        animateOut()
    }
    @IBAction func addClass(_ sender: Any) {
        animateIn()
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


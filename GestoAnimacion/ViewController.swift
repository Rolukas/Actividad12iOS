//
//  ViewController.swift
//  GestoAnimacion
//
//  Created by alicharlie on 11/05/16.
//  Copyright © 2016 codepix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var indetify: UILabel!
    @IBOutlet var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("DID LOAD")
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.tapped(_:)))
        indetify.addGestureRecognizer(tap)
        result.isUserInteractionEnabled = true
        indetify.isUserInteractionEnabled = true
        
        let swipe = UISwipeGestureRecognizer(target: self, action: #selector(self.tapped(_:)))
        indetify.addGestureRecognizer(swipe)
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.indetify.alpha = 1
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @objc func tapped(_ sender: UIGestureRecognizer){
        print("ENTRA")
        DispatchQueue.main.async {
            if sender is UITapGestureRecognizer{
                self.result.text = "TAP"
            }
            
            
            if sender is UISwipeGestureRecognizer{
                self.result.text = "SWIPE"
            }
            
            
        }
        
    }
    
    func animacion(){
        UIView.animate(withDuration: 3, delay: 0.2, options: [], animations: {
            self.indetify.alpha = 1.0
            }) { _ in
                self.indetify.alpha = 0.0
        }
    }
    

}


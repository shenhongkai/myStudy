//
//  ViewController.swift
//  swift基础
//
//  Created by 申鸿凯 on 2018/1/4.
//  Copyright © 2018年 shenhk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func showaaMessage(sender: UIButton){
        
        let dic = ["😂":"笑出眼泪","😚":"亲吻"]
        let selectedButton = sender
        
        if let word = selectedButton.titleLabel?.text {
            let meaning = dic[word]
            
        
        let alertController = UIAlertController(title: "wecome to my first app", message: meaning, preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
        }
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


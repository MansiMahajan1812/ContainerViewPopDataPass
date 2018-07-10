//
//  ViewController.swift
//  ContainerViewPopDataPass
//
//  Created by Mansi Mahajan on 6/21/18.
//  Copyright © 2018 Mansi Mahajan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DemoDelegate {
    var data: String!
    func sendMessage(data: String) {
        self.data = data
        print(self.data)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func submitAction(_ sender: UIButton) {
//        let a = self.navigationController?.viewControllers[1] as! ContainerViewController
//        a.d = "xjghsgxh"
//        navigationController?.popViewController(animated: true)
        
    let storyBoard = UIStoryboard(name: "StoryboardSecond", bundle: nil)
    var vc = storyBoard.instantiateViewController(withIdentifier: "ViewControllerNew") as! ViewControllerNew
        vc.delegate = self
    navigationController?.pushViewController(vc, animated: true)
        
    }
    

}


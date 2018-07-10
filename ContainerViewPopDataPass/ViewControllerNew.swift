//
//  ViewControllerNew.swift
//  ContainerViewPopDataPass
//
//  Created by Mansi Mahajan on 6/21/18.
//  Copyright © 2018 Mansi Mahajan. All rights reserved.
//

import UIKit

protocol DemoDelegate{
    
    func sendMessage(data: String)
}
class ViewControllerNew: UIViewController {

    var valueText = {
        print("Hello")
    }
    var delegate: DemoDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        valueText()

        // Do any additional setup after loading the view.
    }
    
    

    @IBOutlet weak var textField: UITextField!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonAction(_ sender: UIButton) {
        self.delegate?.sendMessage(data: textField.text!)
        navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

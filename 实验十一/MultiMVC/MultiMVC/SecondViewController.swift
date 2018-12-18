//
//  SecondViewController.swift
//  MultiMVC
//
//  Created by 7 on 2018/12/17.
//  Copyright © 2018 7. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var stu:Student!
    
    
    @IBOutlet weak var tfNo: UITextField!
    @IBOutlet weak var tfName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfNo.text = stu.no
        tfName.text = stu.name
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func back(_ sender: Any) {
        stu.no = tfNo.text!
        stu.name = tfName.text!
        
        navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  ViewController.swift
//  MultiMVC
//
//  Created by 7 on 2018/12/17.
//  Copyright © 2018 7. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var stu = Student()
    
    @IBOutlet weak var tfNo: UITextField!
    @IBOutlet weak var tfName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tfNo.text = stu.no
        tfName.text = stu.name
    }
    
    
    @IBAction func showSecondVC(_ sender: Any) {
        stu.no = tfNo.text!
        stu.name = tfName.text!
        
        let secVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondVC")as!SecondViewController
        
        secVC.stu = stu
        
        self.navigationController?.pushViewController(secVC, animated: true)
    }
    
    
}


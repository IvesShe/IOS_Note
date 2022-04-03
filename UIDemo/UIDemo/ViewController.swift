//
//  ViewController.swift
//  UIDemo
//
//  Created by 佘嘉豐 on 2022/4/2.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var tfPhone: UITextField!
    @IBOutlet weak var tfAge: UITextField!
    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textView.text = ""
        textView.backgroundColor = UIColor.yellow
    }

    @IBAction func clickSend(_ sender: Any) {
        var text = ""
        let name = tfName.text ?? ""
        let password = tfPassword.text ?? ""
        let phone = tfPhone.text ?? ""
        let age = Int(tfAge.text ?? "") ?? 0
        text = "帳號: \(name)\n密碼: \(password)\n手機號碼: \(phone)\n年紀: \(age)"
        textView.text = text
    }
    
    @IBAction func clickClear(_ sender: Any) {
        tfName.text = ""
        tfPassword.text = ""
        tfPhone.text = ""
        tfAge.text = ""
        textView.text = ""
    }
}


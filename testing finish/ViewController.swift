//
//  ViewController.swift
//  testing finish
//
//  Created by admin on 04.12.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numTF: UITextField!
    @IBOutlet var passTF: UITextField!
    @IBOutlet var buton: UIButton!
    
    var isValidNum=false
    var num: String = ""
    var pass: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buton.layer.cornerRadius = 5
    }
    
    
    @IBAction func validNum() {
        num=numTF.text ?? ""
        if num.count >= 8 {
            isValidNum=true
        }else{
            isValidNum=false
            buton.isEnabled=false
        }
    }
    @IBAction func validPass() {
        pass=passTF.text ?? ""
        if pass.count >= 6 && isValidNum {
            buton.isEnabled=true
        }else{
            buton.isEnabled=false
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is UserController
        {
            let uc = segue.destination as? UserController
            uc?.userNameStr = num
        }
    }
    

    
}


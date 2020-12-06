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
    
    var num: String = ""
    var pass: String = ""
    var isValidNum = false
    var isValidPass = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buton.layer.cornerRadius = 4
        buton.backgroundColor = .lightGray
    }
    
    @IBAction func validNum() {
        num = numTF.text ?? ""
        if num.count >= 8 {
           isValidNum=true
        }else{
            isValidNum=false
            buton.backgroundColor = .lightGray
            buton.isEnabled=false
        }
        if isValidNum && isValidPass {
            buton.isEnabled=true
            buton.backgroundColor = .blue
        }
    }
    @IBAction func validPass() {
        pass = passTF.text ?? ""
        if pass.count >= 6 {
            isValidPass=true
        }
        else{
            isValidPass=false
            buton.backgroundColor = .lightGray
        }
        if isValidNum && isValidPass {
            buton.isEnabled=true
            buton.backgroundColor = .blue
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


//
//  RequestController.swift
//  testing finish
//
//  Created by admin on 09.12.2020.
//

import UIKit

class RequestController: UIViewController {


    @IBOutlet var notice: UILabel!
    @IBOutlet var rep: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        guard let url = URL(string: "http://jsonplaceholder.typicode.com/todos/1") else { return }
        let session = URLSession.shared
        if session.dataTask(with: url).error == nil {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            if let vc = storyboard.instantiateViewController(withIdentifier: "main_id") as? ViewController {
                        vc.modalPresentationStyle = .overFullScreen
                        self.present(vc, animated: false, completion: {
                        })
                    }
        }else{
            notice.isHidden = false
            rep.isHidden = false
            }
        }
    }
    


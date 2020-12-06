//
//  UserController.swift
//  testing finish
//
//  Created by admin on 05.12.2020.
//

import UIKit

class UserController: UIViewController, UITableViewDelegate{

    var userNameStr: String  = ""

    var id = [
        ["name","balance"],
        ["watches"],
        ["friends"],
        ["sup","about"]
    ]
    
    @IBOutlet var data: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        data.delegate = self
        data.dataSource = self
    }

}

extension UserController: UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return id.count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 16
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return id[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if id[indexPath.section][indexPath.row]=="name" {
            let cell = data.dequeueReusableCell(withIdentifier: id[indexPath.section][indexPath.row], for: indexPath)
            cell.textLabel?.text = userNameStr
            return cell
        }else{
            let cell = data.dequeueReusableCell(withIdentifier: id[indexPath.section][indexPath.row], for: indexPath)
            return cell
        }
    }
}
    
    


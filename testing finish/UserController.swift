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
        ["name"],
        ["balance","watches"],
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
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
        {
            let headerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.bounds.size.width, height: 16))
            headerView.backgroundColor = UIColor(red: 0.965, green: 0.965, blue: 0.965, alpha: 1)
            return headerView
        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return id[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = data.dequeueReusableCell(withIdentifier: id[indexPath.section][indexPath.row], for: indexPath)
        if id[indexPath.section][indexPath.row]=="name" {
            cell.textLabel?.text = userNameStr
            return cell
        }else{
            return cell
        }
    }
}
    
    


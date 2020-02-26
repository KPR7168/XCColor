//
//  ViewController.swift
//  XCColor
//
//  Created by Pichratanak Ky on 25/2/20.
//  Copyright © 2020 Pichratanak Ky. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return UIColor.allColors.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = UIColor.allNames[indexPath.row]
        cell.contentView.backgroundColor = UIColor.allColors[indexPath.row]
        return cell
    }

}


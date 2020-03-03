//
//  ColorsTable ViewController.swift
//  Colors Table View
//
//  Created by Patrick Wiley on 3/2/20.
//  Copyright © 2020 Patrick Wiley. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
   var colors = ["Red","Orange","Yellow","Green","Blue","Purple","Brown"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        cell.textLabel?.text = colors[indexPath.row]
        
        return cell
    }
override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
}
    
}

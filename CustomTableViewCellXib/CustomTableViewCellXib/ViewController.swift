//
//  ViewController.swift
//  CustomTableViewCellXib
//
//  Created by shuyao on 2/19/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let imageName = ["food0", "food1", "food2", "food3", "food4", "food5", "food6", "food7"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageName.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell
        
        cell.imageContainer.image = UIImage(named: imageName[indexPath.row])
        cell.lblImage.text = imageName[indexPath.row]
        //"Seattle\(indexPath.row)"
        
        return cell
    }

}



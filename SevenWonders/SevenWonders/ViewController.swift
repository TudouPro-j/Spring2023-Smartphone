//
//  ViewController.swift
//  SevenWonders
//
//  Created by shuyao on 3/18/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let arr = ["Great Wall, China", "Chichen Itza, Mexico", "Petra, Jordan", "Machu Picchu, Peru", "Christ the Redeemer, Mexico", "Colosseum, Rome", "Taj Mahal, India"]

    
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell
        
        cell.imageContainer.image = UIImage(named: arr[indexPath.row])
        cell.textLabel?.text = arr[indexPath.row]
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //Add code to go to the View Controller
    }
    
}


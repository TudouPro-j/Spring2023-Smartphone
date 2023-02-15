//
//  ViewController.swift
//  RestaurantsAndFood
//
//  Created by shuyao on 2/14/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let restaurant = ["Domino", "KFC", "Rong City", "Tp Tea"]
    let food = ["Pizza", "Hamburgar", "Hot Pot", "Milk Tea"]
    
    @IBOutlet weak var tblViewRestauant: UITableView!
    
    
    @IBOutlet weak var tblViewFood: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tblViewFood.isHidden = true
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (tableView == tblViewRestauant) {
            return restaurant.count
        } else {
            return food.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (tableView == tblViewRestauant){
            let cell = tableView.dequeueReusableCell(withIdentifier: "restaurant", for: indexPath)
            cell.textLabel?.text = restaurant[indexPath.row]
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "food", for: indexPath)
            cell.textLabel?.text = food[indexPath.row]
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == tblViewRestauant {
            tblViewFood.isHidden = false
        }
    }
}


//
//  ViewController.swift
//  SevenWonders-MidTerm
//
//  Created by shuyao on 3/18/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let arr = ["Great Wall", "Chichen Itza", "Petra", "Machu Picchu", "Christ the Redeemer", "Colosseum", "Taj Mahal"]
    
    let country = ["China", "Mexico", "Jordan", "Peru", "Mexico", "Rome", "India"]
    
    var selectedIndex = 0
    
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 300
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell
        
        cell.imageContainer.image = UIImage(named: arr[indexPath.row])
        cell.lblImage?.text = arr[indexPath.row]
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //Add code to go to the View Controller
        selectedIndex = indexPath.row
        performSegue(withIdentifier: "segueSecondVC", sender: self)
    }

    override func prepare(for segue:UIStoryboardSegue, sender:Any? ){
        if segue.identifier == "segueSecondVC" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.wonderIndex = selectedIndex
        }
    }
    
}


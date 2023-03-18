//
//  ViewController.swift
//  ProtocolsAndDelegate
//
//  Created by shuyao on 3/18/23.
//

import UIKit

class ViewController: UIViewController, SetStatusDelegate {
    

    @IBOutlet weak var txtName: UITextField!
    
    
    @IBOutlet weak var lblStatus: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func gotoSecondVC(_ sender: Any) {
        performSegue(withIdentifier: "segueSecondVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueSecondVC" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.setStatusDelegate = self
            guard let name = txtName.text else {return}
            secondVC.name = name
        }
    }
    
    func setStatus(status: String) {
        lblStatus.text = "My Status is : \(status)"
    }
    
}


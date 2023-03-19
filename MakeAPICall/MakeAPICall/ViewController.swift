//
//  ViewController.swift
//  MakeAPICall
//
//  Created by shuyao on 3/18/23.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    @IBOutlet weak var txtStockSymbol: UITextField!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblWebsite: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func GetDetailsAction(_ sender: Any) {
        guard let symbol = txtStockSymbol.text else {return}
        let url = "\(baseURL)\(symbol)?apikey=\(apiKey)"
        
        AF.request(url).responseJSON {response in
            if response.error != nil {
                print("Error in response")
                return
            }
            guard let rawData = response.data else {return}
            guard let jsonArray = JSON(rawData).array else {return}
            guard let stock = jsonArray.first else {return}
            let symbol = stock["symbol"].stringValue
            let price = stock["price"].doubleValue
            let website = stock["website"].stringValue
            let name = stock["companyName"].stringValue
            
            self.lblName.text = "Name: \(name)"
            self.lblPrice.text = "Price : \(price)"
            self.lblWebsite.text = "Website: \(website)"
        }
    }
    
}


//
//  SecondViewController.swift
//  SevenWonders-MidTerm
//
//  Created by shuyao on 3/18/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    var wonderIndex = 0
    let details = [
    "The Great Wall of China is a huge barrier that spans thousands of miles along China’s historic northern border.",
    "The Colosseum is the great oval amphitheater in the center of Rome where gladiators once fought for their life.",
    "Petra, the ancient city in southern Jordan is also known as the ‘rose city’ for its golden hue.",
    "Deep in the Mexican state of Yucatán lies Chichen Itza, a historic Mayan city built between the 9th and 12th centuries. ",
    "The totemic statue of Christ the Redeemer stands over Rio de Janeiro on the top of Mount Corcovado.",
    "India’s renowned Taj Mahal (Persian for Crown of Palaces) is the stunning white marble mausoleum on the bank of the Yamuna River in the city of Agra, and it has been selected as one of the seven wonders of the world.",
    "Machu Picchu is a lost treasure of the 15th century, a rare citadel discovered high in the Andes mountains above the Peruvian Sacred Valley."
    ]
    
    @IBOutlet weak var lblDetails: UILabel!
    override func viewDidLoad() {
        lblDetails.text=details[wonderIndex]
        super.viewDidLoad()
        
    }

}

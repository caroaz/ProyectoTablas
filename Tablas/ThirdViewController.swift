//
//  ThirdViewController.swift
//  Tablas
//
//  Created by Mobdev on 24-03-22.
//

import UIKit

class ThirdViewController: UIViewController {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var directorLabel: UILabel!
    
    @IBOutlet weak var yearLabel: UILabel!
    
    
    var dataDetails : String = ""
    var dataDetailsDirector: String = ""
    var dataDetailsYear: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    titleLabel.text = dataDetails
    directorLabel.text = dataDetailsDirector
    yearLabel.text = dataDetailsYear
    }
    

}

//
//  SecondViewController.swift
//  Tablas
//
//  Created by Mobdev on 23-03-22.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var DirectorLabel: UILabel!
    
    @IBOutlet weak var miDetalleLabel: UILabel!
    
    @IBOutlet weak var YearLabel: UILabel!
    
    var dataDetails : String = ""
    var dataDetailsDirector: String = ""
    var dataDetailsYear: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        miDetalleLabel.text = dataDetails
        DirectorLabel.text = dataDetailsDirector
        YearLabel.text = dataDetailsYear
        

}
}

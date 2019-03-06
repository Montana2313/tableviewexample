//
//  SecondViewController.swift
//  LandMarkBook
//
//  Created by Özgür  Elmaslı on 6.03.2019.
//  Copyright © 2019 Özgür  Elmaslı. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var imageview: UIImageView!
    
    var uninamesc = ""
    var uniimage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelText.text = uninamesc
        imageview.image = uniimage
        
    }



}

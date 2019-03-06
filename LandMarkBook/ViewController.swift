//
//  ViewController.swift
//  LandMarkBook
//
//  Created by Özgür  Elmaslı on 6.03.2019.
//  Copyright © 2019 Özgür  Elmaslı. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    @IBOutlet weak var TableView: UITableView!
    
    var uniname = [String]()
    var uniimage = [UIImage]()
    var selectedname = ""
    var selectedimage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        TableView.dataSource = self
        TableView.delegate = self
        
        uniname.append("Boğaz İçi")
        uniname.append("Erciyes Üniversitesi")
        uniname.append("Maymun kardeş")
        
        uniimage.append(UIImage(named: "bogaz.JPG")!)
         uniimage.append(UIImage(named: "erciyes.jpg")!)
         uniimage.append(UIImage(named: "img2.jpg")!)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return uniname.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = uniname[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete
        {
            uniname.remove(at: indexPath.row)
            uniimage.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showsegue"
        {
            let destinationVc = segue.destination as! SecondViewController
            // if anyone wants , you can check value (if let value in valuve as String or image like this)
            destinationVc.uninamesc = selectedname
            destinationVc.uniimage = selectedimage
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedname = uniname[indexPath.row]
        selectedimage = uniimage[indexPath.row]
        performSegue(withIdentifier: "showsegue", sender: nil)
    }
  
    


}


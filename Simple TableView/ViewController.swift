//
//  ViewController.swift
//  Simple TableView
//
//  Created by 김종현 on 2018. 4. 30..
//  Copyright © 2018년 김종현. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var myTableView: UITableView!
    var animals = ["Cow", "Pig", "Dog", "Rabbit", "Bird"]
    var year = ["3", "5", "2", "4", "5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // UIViewController와 Delegate 연결
        myTableView.delegate = self
        myTableView.dataSource = self
    
    }
    
    // UITableViewDataSoure
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "Cell"
        let cell = myTableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        // cell에 image 넣기
        let myImage = UIImage(named:"cat.png")
        cell.imageView?.image = myImage
        
        // cell에 text 넣기
        cell.textLabel?.text = animals[indexPath.row]
        
        // cell에 detailText 넣기
        cell.detailTextLabel?.text = year[indexPath.row]
        
        return cell
    }

}


//
//  ViewController.swift
//  DynamicTableView
//
//  Created by Rajat Khanna on 21/08/18.
//  Copyright © 2018 Amity University. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var MyTableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return StudentNameDataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableelement = tableView.dequeueReusableCell(withIdentifier: "NameClass") as! StudentClassCell
        tableelement.StudentNameLabel.text = StudentNameDataSource[indexPath.row]
        tableelement.StudentClass.text = StudentClassDataSource[indexPath.row]
        return tableelement
    }
    
    var StudentNameDataSource = Array<String>()
    var StudentClassDataSource = Array<String>()

    override func viewDidLoad() {
        super.viewDidLoad()

        StudentNameDataSource.append("Vivek")
        StudentClassDataSource.append("5CSE-4")

        StudentNameDataSource.append("Sandru")
        StudentClassDataSource.append("3CSE-4")

        StudentNameDataSource.append("Sarthak")
        StudentClassDataSource.append("1CSE-3")

        StudentNameDataSource.append("Abhinav")
        StudentClassDataSource.append("1CSE-3")

        StudentNameDataSource.append("Animesh")
        StudentClassDataSource.append("7CSE-5")

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addClicker(_ sender: Any) {
        StudentNameDataSource.append("Animesh")
        StudentClassDataSource.append("7CSE-5")
        MyTableView.reloadData()
        }
    
    
    
}


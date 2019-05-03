//
//  ViewController.swift
//  BounaSeraClient
//
//  Created by Matheus Gois on 03/05/19.
//  Copyright © 2019 Matheus Gois. All rights reserved.
//

import UIKit

class MainMenu: UIViewController,  UITableViewDelegate, UITableViewDataSource {
    
    
    let list:[String] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var filteredList = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        makeGetCall("https://first-app-academy.herokuapp.com/api/dish")
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    
    
    
    //TABVIEW
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let UICell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "celulaStoryBord")!
        UICell.textLabel!.text = list[indexPath.row]
        return UICell
    }
    
}


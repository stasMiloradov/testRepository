//
//  ViewController.swift
//  testProject
//
//  Created by Stanislav Miloradov on 09/12/2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    var myTabelView = UITableView()
    let identifire = "MyCell"
    var array = ["1","2","3","4","5","6","7","8","9"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        createTable()
        
    }
    
    func createTable() {
        myTabelView = UITableView(frame: view.bounds, style: .plain)
        myTabelView.register(UITableViewCell.self, forCellReuseIdentifier: identifire)
        
        self.myTabelView.delegate = self
        self.myTabelView.dataSource = self
        
        myTabelView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        view.addSubview(myTabelView)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: identifire, for: indexPath)
        
        let number = array[indexPath.row]
        
        cell.textLabel?.text = number
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let number = array[indexPath.row]
        print(number)
    }


}


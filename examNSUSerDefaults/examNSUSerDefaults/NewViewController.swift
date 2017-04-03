//
//  NewViewController.swift
//  examNSUSerDefaults
//
//  Created by Manish Kumar on 22/02/17.
//  Copyright © 2017 appface. All rights reserved.
//

import UIKit

class NewViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    let userDefault = UserDefaults.standard
    @IBOutlet weak var resetButtonOutlet: UIButton!
    
    @IBOutlet weak var saveButtonOutlet: UIButton!
    
    @IBOutlet weak var textFieldOutlet: UITextField!
    
    @IBOutlet weak var tableViewOutlet: UITableView!
     var storeData = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        saveButtonOutlet.layer.cornerRadius = 6
        resetButtonOutlet.layer.cornerRadius = 6
        if userDefault.string(forKey: "myData") != nil{
      storeData = userDefault.stringArray(forKey: "myData")!
        }
    
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
     return storeData.count
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
    let cell = tableView.dequeueReusableCell(withIdentifier: "myTableViewIdentifier", for: indexPath) as! myTableViewCell
        
        cell.displayFruitName.text = storeData[indexPath.row]
        tableView.tableFooterView = UIView(frame: CGRect.zero)
        return cell
    
    }

    
    
    @IBAction func saveDataAction(_ sender: Any) {
        if textFieldOutlet.text != "" {
            storeData.append(textFieldOutlet.text!)
            textFieldOutlet.text = ""
            userDefault.set(storeData, forKey: "myData")
        }
       self.tableViewOutlet.reloadData()
    }

    @IBAction func resetTAbleCell(_ sender: Any) {
        storeData = []
        tableViewOutlet.reloadData()
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

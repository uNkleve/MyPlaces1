//
//  MainViewController.swift
//  MyPlaces
//
//  Created by uNkleve on 15.04.2020.
//  Copyright © 2020 Artem Tomilov. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {

    let reustarantNames = ["Chicken", "MCDonalds", "Burger King", "Shaurma A", "Nikala", "Sakartvelo", "Stolovaya Pushkarskaya 51", "Blinnaya Skovorodka", "Petruccio", "KFC", "Gala", "Pasta", "Pizzaman", "Violet", "KillFish"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reustarantNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = reustarantNames[indexPath.row]
        cell.imageView?.image = UIImage(named: reustarantNames[indexPath.row])
        cell.imageView?.layer.cornerRadius = cell.frame.size.height / 2
        cell.imageView?.clipsToBounds = true
        
        return cell
    }
    
    // MARK: - table view delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    /*
      MARK: - Navigation

     In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         Get the new view controller using segue.destination.
         Pass the selected object to the new view controller.
    }
    */

}

//
//  ViewController.swift
//  Design#1
//
//  Created by Sree Lakshman on 06/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
   
    let labels = ["My Bingo Challenges", "My Quizzes","Saved", "My Affirmations","My Saved Rituals"]
    let labels2 = ["4 Participated", "1 Completed", "2 Posts and Photos", "7 Completed","0 Rituals"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        self.tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
    }
}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return labels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomCell
        let label = labels[indexPath.row]
        cell.avatarImg.image = UIImage(named: label)
        cell.nameLabel.text = label
        cell.nameLabel2.text = self.labels2[indexPath.row]
        
        return cell 
    }
    
    
}

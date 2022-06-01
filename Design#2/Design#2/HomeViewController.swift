//
//  HomeViewController.swift
//  Design#2
//
//  Created by Sree Lakshman on 09/05/22.
//

import UIKit

class HomeViewController: UIViewController {

    
    let upperItems = ["Identify(Free)","Skill Videos($399 value!)","AudioBook","Exam Prep"]
    let lowerItems = ["Test your knowledge of the various tools covered throughout the manual with more than 70 tool identification photos","Prepare for the hands-on portion of firefighter training by watching 173 skill videos covering Firefighter I, Firefighter II, Hazardous Materials Awareness, and Hazardous Materials Operations. Each Skills video details the steps required to pass the skill.","The audiobook includes all 27 chapters accessible on the go. Download the content for offline access, bookmark content you'd like to revisit, and listen at your own speed.","This module is loaded with 1480 questions to test your understanding of the content presented in the Essentials of Firefighting. 7th Edition Manual. Our Exam Prep Module tracks and records your progress, allowing you to review your practice tests and focus on your weaknesses. In addition, your missed questions are automatically added to your study deck and reports are available to analyze your progress."]
    @IBOutlet weak var homeTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .black
        self.homeTableView.delegate = self
        self.homeTableView.dataSource = self
        let nib = UINib(nibName: "CustomCell", bundle: nil)
        homeTableView.register(nib, forCellReuseIdentifier: "CustomCell")
        //self.tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension HomeViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.upperItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = homeTableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCell
        cell.homeUpperLabel.text = self.upperItems[indexPath.row]
        cell.homeLowerLabel.text = self.lowerItems[indexPath.row]
        
        return cell
        
       
    }
}


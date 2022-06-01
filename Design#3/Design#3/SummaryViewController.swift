//
//  SummaryViewController.swift
//  Design#3
//
//  Created by Sree Lakshman on 10/05/22.
//

import UIKit

class RunningData{
    var title:String
    var subtitle:String
    var date:String
    
    init(title:String,subtitle:String,date:String){
        self.title = title
        self.subtitle = subtitle
        self.date = date
    }
}

class SummaryViewController: UIViewController {

    
    @IBOutlet weak var tableView:UITableView!
    let list = ["Outdoor Run", "Outdoor Walk", "Outdoor Run", "Outdoor Walk", "Outdoor Walk", "Indoor Walk", "Indoor Walk", "Indoor Walk"]

    let subtitles = ["1.02km", "5.03km", "1.01km", "5.01km", "5.71km", "2.78km", "2.79km", "3.36km"]

    let schedule = ["Saturday", "Saturday", "Friday", "Friday", "Thursday", "Wednesday", "Tuesday", "25/04/22"]
    var dataSource:[RunningData]?
    override func viewDidLoad(){
        super.viewDidLoad()
        let nib = UINib(nibName: "CustomCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "CustomCell")
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.setupData()
        view.backgroundColor = .black
        // Do any additional setup after loading the view.
    }
    
    func setupData(){
        dataSource = []
        let data1 = RunningData(title: "Outdoor Run", subtitle: "1.02km", date: "Saturday")
        dataSource?.append(data1)
        let data2 = RunningData(title: "Outdoor Walk", subtitle: "5.03km", date: "Saturday")
        dataSource?.append(data2)
        let data3 = RunningData(title: "Outdoor Run", subtitle: "1.01km", date: "Friday")
        dataSource?.append(data3)
        let data4 = RunningData(title: "Outdoor Walk", subtitle: "5.01km", date: "Friday")
        dataSource?.append(data4)
        let data5 = RunningData(title: "Outdoor Walk", subtitle: "5.71km", date: "Thursday")
        dataSource?.append(data5)
        let data6 = RunningData(title: "Indoor Walk", subtitle: "2.78km", date: "Wednesday")
        dataSource?.append(data6)
        let data7 = RunningData(title: "Indoor Walk", subtitle: "2.79km", date: "Tuesday")
        dataSource?.append(data7)
        self.tableView.reloadData()
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
extension SummaryViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataSource?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCell
        cell.upperLabel.text = self.dataSource?[indexPath.row].title
        cell.lowerLabel.text = self.dataSource?[indexPath.row].subtitle
        cell.sideLabel.text = self.dataSource?[indexPath.row].date
        return cell
    }
}

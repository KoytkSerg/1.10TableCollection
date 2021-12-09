//
//  ViewController.swift
//  Hw10
//
//  Created by Sergii Kotyk on 18/3/21.
//

import UIKit
struct Menu {
    var tags: [String] = []
}
class MenuData{
    static func menu() -> [Menu]{
        return [
        Menu(tags: ["Авиврежим" ,"WI-FI" ,"Bluetooth" ,"Сотовая связь", "Режим модема"]),
        Menu(tags: ["Уведомления" ,"Звуки, тактильные сигналы" ,"Не беспокоить" ,"Экранное время"]),
            Menu(tags: ["Основные" ,"Пункт управления" ,"Экран и яркость"])
        ]
    }
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var menues = MenuData.menu()
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return menues.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return menues[section].tags.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID") as! TableViewCell
        let tag = menues[indexPath.section].tags[indexPath.row]
        cell.dataLab.text = tag
        cell.switchButton.isHidden = true
        cell.GrayLab.isHidden = true
        cell.redLab.isHidden = true
        switch cell.dataLab.text {
        case "Авиврежим":
            cell.fakePicView.backgroundColor = UIColor.orange
            cell.switchButton.isHidden = false
            cell.accessoryType = .none
        case "WI-FI":
            cell.fakePicView.backgroundColor = UIColor.blue
            cell.GrayLab.isHidden = false
            cell.GrayLab.text = "Anvics-YOTA"
        case "Bluetooth":
            cell.fakePicView.backgroundColor = UIColor.blue
            cell.GrayLab.isHidden = false
            cell.GrayLab.text = "Вкл."
        case "Сотовая связь" :
            cell.fakePicView.backgroundColor = UIColor.green
        case  "Режим модема":
            cell.fakePicView.backgroundColor = UIColor.green
        case "Уведомления":
            cell.fakePicView.backgroundColor = UIColor.red
        case "Звуки, тактильные сигналы":
            cell.fakePicView.backgroundColor = UIColor.red
        case "Не беспокоить":
            cell.fakePicView.backgroundColor = UIColor.purple
        case "Экранное время":
            cell.fakePicView.backgroundColor = UIColor.purple
        case "Основные":
            cell.fakePicView.backgroundColor = UIColor.gray
            cell.redLab.isHidden = false
        case "Пункт управления":
            cell.fakePicView.backgroundColor = UIColor.gray
        case "Экран и яркость":
            cell.fakePicView.backgroundColor = UIColor.blue
        
        default: cell.switchButton.isHidden = true
        }
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
    }


    
    @IBOutlet weak var TableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}


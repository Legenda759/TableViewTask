//
//  TableViewController.swift
//  TableViewTask
//
//  Created by Legenda_759 on 03/02/22.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var imgColor = "#4F8F79"
    var aboveItem = Array<Above>()
    var tablesItem1 = Array<Tables1>()
    var tablesItem2 = Array<Tables2>()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        // Do any additional setup after loading the view.
    }
    
//    MARK: - Methods
    
    func initViews() {
        view.backgroundColor = .white
        title = "Прочее"
        
        aboveItem.append(Above(text1: "Направить письмо", image1: "post", image2: "call-1", text2: "Обратный звонок", image3: "chat", text3: "Онлайн чат с банком"))
        

        tablesItem1.append(Tables1(text: "Банк на карте", image: "location"))
        tablesItem1.append(Tables1(text: "Публичная оферта", image: "document"))
        tablesItem1.append(Tables1(text: "О приложении", image: "info"))
        tablesItem1.append(Tables1(text: "Что нового?", image: "news"))
        
        
        
        tablesItem2.append(Tables2(text: "Язык", image: "russia"))
        tablesItem2.append(Tables2(text: "Настройки безопасности", image: "security"))
        tablesItem2.append(Tables2(text: "Поделиться", image: "share"))
        tablesItem2.append(Tables2(text: "Очистить кэш", image: "trash"))
        
        let nib = UINib(nibName: "Bottom1TableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "Bottom1TableViewCell")
        tableViewSettings()
    }
    
    func tableViewSettings() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = UIColor(hexString: "#F0F4F6")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.separatorInset = .zero
        
        tableView.tableFooterView = UIView()
        if #available(iOS 15.0, *) {
            tableView.sectionHeaderTopPadding = 0
        }
    }
    

//    MARK: - Table View
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 1
        }
        if section == 1{
            return tablesItem1.count
        }
        return tablesItem2.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0 {
            return nil
        }
        if section == 1 {
            let headerView = UIView()
            headerView.backgroundColor = UIColor(hexString: "#F0F4F6")
            let headerLabel = UILabel(frame: CGRect(x: 10, y: 0, width:
                tableView.bounds.size.width, height: 35))
            headerLabel.font = UIFont.systemFont(ofSize: 15)
            headerLabel.textColor = UIColor.black
            headerLabel.text = "Дополнительная информация"
            headerLabel.textAlignment = .left
            headerView.addSubview(headerLabel)
        return headerView
        }
        let headerView = UIView()
            headerView.backgroundColor = UIColor(hexString: "#F0F4F6")
            let headerLabel = UILabel(frame: CGRect(x: 10, y: 0, width:
                tableView.bounds.size.width, height: 35))
            headerLabel.font = UIFont.systemFont(ofSize: 15)
            headerLabel.textColor = UIColor.black
            headerLabel.text = "Настройки"
            headerLabel.textAlignment = .left
            headerView.addSubview(headerLabel)
        return headerView
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 0
        }
        return 35
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let item = aboveItem[indexPath.row]
            let cell = Bundle.main.loadNibNamed("AboveTableViewCell", owner: self, options: nil)?.first as! AboveTableViewCell
            
            cell.imgText.image = UIImage(named: item.image1!)?.withTintColor(UIColor(hexString: imgColor))
            cell.label1.text = item.text1
            
            cell.imgCall.image = UIImage(named: item.image2!)?.withTintColor(UIColor(hexString: imgColor))
            cell.label2.text = item.text2
            
            cell.imgChat.image = UIImage(named: item.image3!)?.withTintColor(UIColor(hexString: imgColor))
            cell.label3.text = item.text3
            
            return cell
        }
        if indexPath.section == 1{
            let item = tablesItem1[indexPath.row]
            let cell = tableView.dequeueReusableCell(withIdentifier: "Bottom1TableViewCell") as! Bottom1TableViewCell
//            let cell = Bundle.main.loadNibNamed("Bottom1TableViewCell", owner: self, options: nil)?.first as! Bottom1TableViewCell
            cell.text_label.text = item.text
            cell.ic_image.image = UIImage(named: item.image!)?.withTintColor(UIColor(hexString: "#4F8F79"))
            return cell
        }
        let item = tablesItem2[indexPath.row]
        let cell = Bundle.main.loadNibNamed("BottomTableViewCell", owner: self, options: nil)?.first as! BottomTableViewCell
        if item.image != "russia" {
        cell.ic_image.image = UIImage(named: item.image!)?.withTintColor(UIColor(hexString: "#4F8F79"))
        }else {
            cell.ic_image.image = UIImage(named: item.image!)
        }
        cell.text_label.text = item.text
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 120
        }
        return 52
    }
    
    
    
}

//
//  AboveTableViewCell.swift
//  TableViewTask
//
//  Created by Legenda_759 on 04/02/22.
//

import UIKit

class AboveTableViewCell: UITableViewCell {
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var imgText: UIImageView!
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var imgCall: UIImageView!
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var imgChat: UIImageView!
    @IBOutlet weak var label3: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        view1Settings()
        view2Settings()
        view3Settings()
        
    }
    
//    MARK: - Methods
    
    func view1Settings() {
        
        view1.backgroundColor = .white
        view1.layer.cornerRadius = 7
        //        shadows
        view1.layer.shadowColor = UIColor.gray.cgColor
        view1.layer.shadowOpacity = 5
        view1.layer.shadowOffset = .zero
        view1.layer.shadowRadius = 1
        
        label1.font = UIFont.systemFont(ofSize: 12.0)
        label1.textColor = .black
        
    }
    
    func view2Settings() {
        
        view2.backgroundColor = .white
        view2.layer.cornerRadius = 7
        //        shadows
        view2.layer.shadowColor = UIColor.gray.cgColor
        view2.layer.shadowOpacity = 5
        view2.layer.shadowOffset = .zero
        view2.layer.shadowRadius = 1
        
        label2.font = UIFont.systemFont(ofSize: 12.0)
        label2.textColor = .black
        
    }
    
    func view3Settings() {
        
        view3.backgroundColor = .white
        view3.layer.cornerRadius = 7
        //        shadows
        view3.layer.shadowColor = UIColor.gray.cgColor
        view3.layer.shadowOpacity = 5
        view3.layer.shadowOffset = .zero
        view3.layer.shadowRadius = 1
        
        label3.font = UIFont.systemFont(ofSize: 12.0)
        label3.textColor = .black
            
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

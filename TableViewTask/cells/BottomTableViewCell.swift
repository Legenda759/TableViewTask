//
//  BottomTableViewCell.swift
//  TableViewTask
//
//  Created by Legenda_759 on 04/02/22.
//

import UIKit

class BottomTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var ic_image: UIImageView!
    @IBOutlet weak var ic_chevron: UIImageView!
    @IBOutlet weak var text_label: UILabel!
    @IBOutlet weak var view: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        initViews()
        contentView.backgroundColor = UIColor(hexString: "#F0F4F6")
    }
    
//    MARK: - Methods
    
    func initViews() {
        viewSettings()
        labelSettings()
        imgChevronSettings()
    }
    
    func imgChevronSettings() {
        let img = UIImage(named:"chevronRight")?.withTintColor(UIColor(hexString: "#4F8F79"))
        ic_chevron.image = img
    }
    
    func labelSettings() {
        text_label.font = UIFont.systemFont(ofSize: 12.0)
        text_label.textColor = .black
    }
    
    func viewSettings() {
        view.backgroundColor = .white
        view.layer.cornerRadius = 7
        //        shadows
        view.layer.shadowColor = UIColor.gray.cgColor
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 0.3
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

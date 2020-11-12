//
//  TableViewCell.swift
//  TableView
//
//  Created by 이명직 on 2020/11/02.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var Label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

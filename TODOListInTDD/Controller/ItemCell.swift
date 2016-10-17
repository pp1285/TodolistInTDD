//
//  ItemCell.swift
//  TODOListInTDD
//
//  Created by pp1285 on 2016/9/17.
//  Copyright © 2016年 EthanChou. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    lazy var dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        return dateFormatter
    }()
    func configCellWithItem(_ item: ToDoItem, checked: Bool = false) {
        if checked {
            let attributedTitle = NSAttributedString(string: item.title,attributes: [NSStrikethroughStyleAttributeName: NSUnderlineStyle.styleSingle.rawValue])

            titleLabel.attributedText = attributedTitle
            locationLabel.text = nil
            dateLabel.text = nil
            } else {
        titleLabel.text = item.title
        locationLabel.text = item.location?.name
        if let timestamp = item.timestamp {
            let date = Date(timeIntervalSince1970: timestamp)
            dateLabel.text = dateFormatter.string(from: date)
        }
        }
    }
}

//
//  ShowedTableViewCell.swift
//  MVPDemo
//
//  Created by 陈刚 on 16/4/10.
//  Copyright © 2016年 陈刚. All rights reserved.
//

import UIKit

class ShowedTableViewCell: UITableViewCell,ViewType {
    //用来展示事件主题或节日名称的Label
    @IBOutlet weak var MixLabel: UILabel!
    //用来展示日期的Label
    @IBOutlet weak var dateLabel: UILabel!
    
    func getData<M : ModelType>(model: M) {
        if let event = model as? Event{
            MixLabel.text = event.eventTitle
            dateLabel.text = event.date
            backgroundColor = UIColor.redColor()
        } else if let festival = model as? Festival{
            MixLabel.text = festival.festivalName
            dateLabel.text = festival.date
        }
    }
}

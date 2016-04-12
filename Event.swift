//
//  Event.swift
//  MVPDemo
//
//  Created by 陈刚 on 16/4/10.
//  Copyright © 2016年 陈刚. All rights reserved.
//

import UIKit

struct Event:DateViewModel{
    var date = ""
    var eventTitle = ""
    func giveData<V : ViewType>(view: V) {
        view.getData(self)
    }
}

//struct ViewModal:CellPresentable{
//    var dateLabelData = ""
//    var mixLabelData = ""
//    var color = UIColor.whiteColor()
//    init(modal:Event){
//        self.dateLabelData = modal.date
//        self.mixLabelData = modal.eventTitle
//        self.color = UIColor.redColor()
//    }
//    init(modal:Festival){
//        self.dateLabelData = modal.date
//        self.mixLabelData = modal.festivalName
//        self.color = UIColor.whiteColor()
//    }
//}


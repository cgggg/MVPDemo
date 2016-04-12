//
//  File.swift
//  MVPDemo
//
//  Created by 陈刚 on 16/4/10.
//  Copyright © 2016年 陈刚. All rights reserved.
//

import UIKit

protocol hasDate{
    var date:String {get set}
}

//protocol CellPresentable{
//    var mixLabelData:String {get set}
//    var dateLabelData:String {get set}
//    var color: UIColor {get set}
//    func updateCell(cell:ShowedTableViewCell)
//}
//
//extension CellPresentable{
//    func updateCell(cell:ShowedTableViewCell){
//        cell.MixLabel.text = mixLabelData
//        cell.dateLabel.text = dateLabelData
//        cell.backgroundColor = color
//    }
//}

//视图使用的协议
protocol ViewType{
    func getData<M:ModelType>(model:M)
}
//数据使用的协议
protocol ModelType{
    func giveData<V:ViewType>(view:V)
}


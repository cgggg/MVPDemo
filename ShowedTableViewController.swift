//
//  ShowedTableViewController.swift
//  MVPDemo
//
//  Created by 陈刚 on 16/4/10.
//  Copyright © 2016年 陈刚. All rights reserved.
//

import UIKit

let cellReusedID = "ShowedTableViewCell"
class ShowedTableViewController: UITableViewController {

    var dataList = [DateViewModel]()
    var loadeddataList:[DateViewModel] = [Event(date: "2月14", eventTitle: "送礼物"),Festival(date: "1月1日", festivalName: "元旦"),Festival(date: "2月14", festivalName: "情人节")]
    override func viewDidLoad() {
        super.viewDidLoad()
        let delayInSeconds = 2.0
        let popTime = dispatch_time(DISPATCH_TIME_NOW,
            Int64(delayInSeconds * Double(NSEC_PER_SEC)))
        dispatch_after(popTime, dispatch_get_main_queue()) { () -> Void in
            //注意这里，我故意把loadeddataList中的数据打乱了，为了实现异构数据的按照某个公共类型的属性的排序，使用了Swift内置的sort函数，String遵守了Compareable协议，这里为了简单吧date指定为String类型,如果是NSDate，你可以在sort的闭包中指定合适的排序规则。
            self.dataList = self.loadeddataList.sort{$0.date < $1.date}
            self.tableView.reloadData()
        }
    }



    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellReusedID, forIndexPath: indexPath) as! ShowedTableViewCell
        dataList[indexPath.row].giveData(cell)
        return cell
    }
}
